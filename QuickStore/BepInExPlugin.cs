using BepInEx;
using BepInEx.Configuration;
using BepInEx.Logging;
using HarmonyLib;
using SpaceCraft;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Reflection;
using UnityEngine;
using UnityEngine.InputSystem;

namespace QuickStore
{
    [BepInPlugin("aedenthorn.QuickStore", "Quick Store", "0.7.9")]
    public partial class BepInExPlugin : BaseUnityPlugin
    {
        private static BepInExPlugin context;

        private static ConfigEntry<bool> modEnabled;
        private static ConfigEntry<bool> isDebug;
        private static ConfigEntry<bool> allowStoreInChests;
        private static ConfigEntry<string> storeKey;
        private static ConfigEntry<string> allowList;
        private static ConfigEntry<string> disallowList;
        private static ConfigEntry<float> range;
        private static ConfigEntry<bool> storeIfAlreadyContains;
        private static ConfigEntry<bool> storeIfContainerNameExact;
        private static ConfigEntry<bool> storeIfContainerNameContains;
        private static ConfigEntry<string> requireNameFlagtoStore;

        private static InputAction action;


        public static void Dbgl(string str = "", LogLevel logLevel = LogLevel.Debug)
        {
            if (isDebug.Value)
            {
                context.Logger.Log(logLevel, str);
            }
        }
        private void Awake()
        {
            context = this;
            modEnabled = Config.Bind<bool>("General", "Enabled", true, "Enable this mod");
            isDebug = Config.Bind<bool>("General", "IsDebug", false, "Enable debug logs");
            allowStoreInChests = Config.Bind<bool>("Options", "AllowStoreInChests", true, "Allow storing in chests.");
            storeKey = Config.Bind<string>("Options", "StoreKey", "<Keyboard>/l", "Key to store items");
            allowList = Config.Bind<string>("Options", "AllowList", "", "Comma-separated list of item IDs to allow storing (overrides DisallowList).");
            disallowList = Config.Bind<string>("Options", "DisallowList", "", "Comma-separated list of item IDs to disallow storing (if AllowList is empty)");
            range = Config.Bind<float>("Options", "Range", 20f, "Store range (m)");
            storeIfAlreadyContains = Config.Bind<bool>("Options", "StoreIfAlreadyContains", true, "Store item in an container when it already has the same item type in it.");
            storeIfContainerNameExact = Config.Bind<bool>("Options", "StoreIfContainerNameExact", true, "Store item in an container when the container has the exact name of the item.");
            storeIfContainerNameContains = Config.Bind<bool>("Options", "StoreIfContainerNameContains", true, "Store item in an container when the container name contains the name of the item.");
            requireNameFlagtoStore = Config.Bind<string>("Options", "requireNameFlagtoStore", "", "Require this tag in the container name to store item");


            if (!storeKey.Value.Contains("<"))
            {
                storeKey.Value = "<Keyboard>/" + storeKey.Value;
            }

            action = new InputAction(binding: storeKey.Value);
            action.Enable();

            Harmony.CreateAndPatchAll(Assembly.GetExecutingAssembly(), null);

            Dbgl("Right - LETS BEGIN");
            Dbgl("Plugin awake. storeKey: " + storeKey.Value);

        }
        [HarmonyPatch(typeof(PlayerInputDispatcher), "Update")]
        static class PlayerInputDispatcher_Update_Patch
        {
            static void Postfix()
            {
                if (modEnabled.Value && Managers.GetManager<WindowsHandler>()?.GetHasUiOpen() == false && action.WasPressedThisFrame())
                {
                    Dbgl("Hotkey Pressed");

                    StoreItems();
                }
            }
        }
        private static bool IsChestName(string name) =>
            name.StartsWith("Container1") || name.StartsWith("Container2") || name.StartsWith("Container3");

        private static void StoreItems()
        {
            List<string> allow = allowList.Value.Split(',').ToList();
            List<string> disallow = disallowList.Value.Split(',').ToList();
            Vector3 pos = Managers.GetManager<PlayersManager>().GetActivePlayerController().transform.position;

            // On remote (non-host) clients, Container1/2/3 chests/lockers are represented via
            // InventoryAssociatedProxy instead of an InventoryAssociated component directly on
            // the container's own GameObject — confirmed by decompiling Assembly-CSharp.dll and
            // by remote diagnostic logs (0 InventoryAssociated matches, 53 raw-name matches, all
            // with hasProxyInParent=True). InventoryAssociatedUtils.FindCandidates finds both
            // host-direct and remote-proxy-only chests uniformly; ResolveInventory below resolves
            // whichever kind each one turns out to be (synchronously for the host case,
            // asynchronously via a ServerRpc round trip for the remote case).
            Action<string> logDiag = isDebug.Value ? (Action<string>)(msg => Dbgl($"[diag] {msg}")) : null;
            var candidates = InventoryAssociatedUtils.FindCandidates(IsChestName, logDiag);

            if (isDebug.Value)
            {
                Dbgl($"[diag] netcode role: isHost={NetcodeUtils.IsHost()} isRemoteClientOnly={NetcodeUtils.IsRemoteClientOnly()}");
            }

            Dbgl($"got {candidates.Count} candidate containers");

            // Snapshot the backpack's current contents upfront (not live collection).
            // We use snapshots because the safe InventoriesHandler APIs are asynchronous:
            // the result callback is deferred via a queued ClientRpc, even on the host,
            // so we cannot rely on synchronous mutation to drive loop control.
            List<WorldObject> backpackSnapshot = new List<WorldObject>(
                Managers.GetManager<PlayersManager>().GetActivePlayerController().GetPlayerBackpack().GetInventory().GetInsideWorldObjects());
            Inventory backpackInventory = Managers.GetManager<PlayersManager>().GetActivePlayerController().GetPlayerBackpack().GetInventory();

            // Track items already claimed/queued for a move this call, so the same item
            // is never assigned to two different containers within one hotkey press.
            HashSet<WorldObject> claimedItems = new HashSet<WorldObject>();
            int unclaimedCount = backpackSnapshot.Count;

            Dbgl($"got {backpackSnapshot.Count} items in backpack");

            // Shared per-container filter+claim logic. Used both for containers resolved
            // synchronously via InventoryAssociated (the common/host case) and for
            // proxy-only chests resolved asynchronously via InventoryAssociatedProxy.GetInventory
            // (remote clients — the RPC round-trip means this can run well after the main loop
            // below has finished, which is fine: it just claims from whatever backpack items are
            // still unclaimed at the time the server responds).
            void ProcessContainer(string containerName, Vector3 containerPos, float dist, Inventory inventory, WorldObjectText objectText)
            {
                if (inventory is null || inventory == backpackInventory)
                {
                    if (inventory is null)
                    {
                        Dbgl($"skipping inventory {containerName} because it is null");
                    }
                    if (inventory == backpackInventory)
                    {
                        Dbgl($"skipping inventory {containerName} because it is the backpack");
                    }

                    return;
                }

                // Snapshot this container's current contents (for storeIfAlreadyContains filter).
                var objList = inventory.GetInsideWorldObjects().ToList();

                // Compute optimistic remaining capacity for this container this call.
                // This is an estimate for loop control only — the server RPC remains authoritative.
                int remainingCapacity = inventory.GetSize() - objList.Count;
                if (remainingCapacity <= 0)
                {
                    Dbgl($"skipping inventory {containerName} because it is at capacity");
                    return;
                }

                Dbgl($"checking close inventory {containerName}: {containerPos}, {pos}: {dist}m, capacity: {remainingCapacity}");

                var resolvedContainerName = TryGetContainerName(objectText);

                if (!string.IsNullOrEmpty(requireNameFlagtoStore.Value) && (resolvedContainerName == null || !resolvedContainerName.Contains($"{requireNameFlagtoStore.Value}")))
                {
                    Dbgl($"skipping inventory {containerName} because it does not contain the required name flag");
                    return;
                }

                if ((storeIfContainerNameExact.Value || storeIfContainerNameContains.Value) && resolvedContainerName == null)
                {
                    Dbgl($"skipping inventory {containerName} because its name could not be retrieved");
                    return;
                }

                for (int j = backpackSnapshot.Count - 1; j >= 0; j--)
                {
                    // Skip if this item is already claimed for a different container.
                    if (claimedItems.Contains(backpackSnapshot[j]))
                    {
                        Dbgl($"skipping item {backpackSnapshot[j].GetGroup().GetId()} because it is already claimed");
                        continue;
                    }

                    // Stop if container is now at capacity (via our optimistic local tracking).
                    if (remainingCapacity <= 0)
                    {
                        Dbgl($"skipping inventory {containerName} because it is at capacity");
                        break;
                    }

                    if (allowList.Value.Length > 0)
                    {
                        if (!allow.Contains(backpackSnapshot[j].GetGroup().GetId()))
                        {
                            Dbgl($"skipping item {backpackSnapshot[j].GetGroup().GetId()} because it is not in the allow list");
                            continue;
                        }
                    }
                    else if (disallowList.Value.Length > 0)
                    {
                        if (disallow.Contains(backpackSnapshot[j].GetGroup().GetId()))
                        {
                            Dbgl($"skipping item {backpackSnapshot[j].GetGroup().GetId()} because it is in the disallow list");
                            continue;
                        }
                    }

                    var itemName = Readable.GetGroupName(backpackSnapshot[j].GetGroup()).ToLower();
                    if (
                        (!storeIfContainerNameExact.Value || resolvedContainerName != itemName) &&
                        (!storeIfContainerNameContains.Value || !resolvedContainerName.Contains(itemName)) &&
                        (!storeIfAlreadyContains.Value || !objList.Exists(o => o.GetGroup() == backpackSnapshot[j].GetGroup()))
                        )
                        {
                            Dbgl($"skipping item {backpackSnapshot[j].GetGroup().GetId()} because it does not pass the container name filters");
                            continue;
                        }

                    // Item passes all filters. Claim it and queue the move.
                    // Capture needed locals inside the loop body so each iteration's closure is independent.
                    var itemToMove = backpackSnapshot[j];
                    var groupName = Readable.GetGroupName(itemToMove.GetGroup());
                    var groupImage = itemToMove.GetGroup().GetImage();

                    claimedItems.Add(itemToMove);
                    unclaimedCount--;
                    remainingCapacity--;

                    Dbgl($"Queuing move of {groupName} to {containerName}");

                    // Use the safe async wrapper. The result callback is deferred via queued ClientRpc.
                    NetcodeUtils.MoveItemBetweenInventories(itemToMove, backpackInventory, inventory, true, success =>
                    {
                        if (success)
                        {
                            Managers.GetManager<DisplayersHandler>()?.GetInformationsDisplayer()
                                ?.AddInformation(2f, groupName, DataConfig.UiInformationsType.OutInventory, groupImage);
                        }
                        Dbgl($"Move of {groupName} to container: {(success ? "succeeded" : "failed")}");
                    });
                }

                if (unclaimedCount == 0)
                {
                    Dbgl($"stored all items");
                }
            }

            // Candidates were already filtered to Container1/2/3-named objects by IsChestName above,
            // so no further "is this a chest" check is needed here — just distance/allow-list, then
            // hand off to ResolveInventory, which resolves host-direct candidates synchronously and
            // remote-proxy candidates asynchronously (potentially after a ServerRpc round-trip).
            foreach (var candidate in candidates)
            {
                if (unclaimedCount == 0)
                {
                    break;
                }

                var dist = Vector3.Distance(candidate.Transform.position, pos);
                if (dist > range.Value || !allowStoreInChests.Value)
                {
                    Dbgl($"skipping inventory {candidate.Name} because it is too far away or not allowed to store in chests");
                    continue;
                }

                var containerName = candidate.Name;
                var containerPos = candidate.Transform.position;
                var objectText = candidate.Transform.GetComponent<WorldObjectText>();

                Dbgl($"checking {(candidate.IsProxyBacked ? "proxy-backed " : "")}inventory: {containerName}");

                InventoryAssociatedUtils.ResolveInventory(candidate, inventory =>
                {
                    ProcessContainer(containerName, containerPos, dist, inventory, objectText);
                });
            }
        }

        // WorldObjectText.GetText() reads through a NetworkVariable-backed proxy that is only
        // populated in that component's own Start(). A component discovered via
        // FindObjectsInactive.Include may not have run Start() yet, in which case GetText()
        // throws NullReferenceException. Treat that the same as "name unavailable" rather than
        // letting it abort the rest of the scan.
        private static string TryGetContainerName(WorldObjectText objectText)
        {
            if (objectText == null)
            {
                return null;
            }
            try
            {
                return objectText.GetText().ToLower();
            }
            catch (NullReferenceException)
            {
                return null;
            }
        }
    }
}
