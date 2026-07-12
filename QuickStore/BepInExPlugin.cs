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
    [BepInPlugin("aedenthorn.QuickStore", "Quick Store", "0.7.6")]
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
        private static void StoreItems()
        {
            List<string> allow = allowList.Value.Split(',').ToList();
            List<string> disallow = disallowList.Value.Split(',').ToList();
            InventoryAssociated[] ial = FindObjectsByType<InventoryAssociated>(FindObjectsInactive.Include, FindObjectsSortMode.InstanceID);
            Vector3 pos = Managers.GetManager<PlayersManager>().GetActivePlayerController().transform.position;

            Dbgl($"got {ial.Length} inventories");

            if (isDebug.Value)
            {
                InventoryAssociated[] ialAll = FindObjectsByType<InventoryAssociated>(FindObjectsInactive.Include, FindObjectsSortMode.InstanceID);
                Dbgl($"[diag] got {ialAll.Length} inventories total (active+inactive) vs {ial.Length} active-only");

                var containerMatches = ialAll.Where(x =>
                    x.name.StartsWith("Container1") || x.name.StartsWith("Container2") || x.name.StartsWith("Container3")).ToList();
                Dbgl($"[diag] found {containerMatches.Count} Container1/2/3-named objects with InventoryAssociated (active+inactive)");
                foreach (var c in containerMatches)
                {
                    Dbgl($"[diag] {c.name} activeInHierarchy={c.gameObject.activeInHierarchy} activeSelf={c.gameObject.activeSelf} pos={c.transform.position}");
                }

                // Separate from the InventoryAssociated-component scan above: search raw scene
                // Transforms by name so we can tell "GameObject doesn't exist for this client"
                // apart from "GameObject exists but its InventoryAssociated component/proxy
                // didn't come along" (e.g. a network-spawn discrepancy between host and remote).
                Transform[] allTransforms = FindObjectsByType<Transform>(FindObjectsInactive.Include, FindObjectsSortMode.None);
                var rawContainerMatches = allTransforms.Where(t =>
                    t.name.StartsWith("Container1") || t.name.StartsWith("Container2") || t.name.StartsWith("Container3")).ToList();
                Dbgl($"[diag] found {rawContainerMatches.Count} Container1/2/3-named GameObjects by raw name scan (any component)");
                foreach (var t in rawContainerMatches)
                {
                    var ia = t.GetComponent<InventoryAssociated>();
                    var proxy = t.GetComponentInParent<InventoryAssociatedProxy>();
                    var netObj = t.GetComponentInParent<Unity.Netcode.NetworkObject>();
                    Dbgl($"[diag] raw {t.name} activeInHierarchy={t.gameObject.activeInHierarchy} hasInventoryAssociated={ia != null} hasProxyInParent={proxy != null} hasNetworkObjectInParent={netObj != null} pos={t.position}");
                }

                Dbgl($"[diag] netcode role: isHost={NetcodeUtils.IsHost()} isRemoteClientOnly={NetcodeUtils.IsRemoteClientOnly()}");
            }

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

            // InformationsDisplayer informationsDisplayer = Managers.GetManager<DisplayersHandler>().GetInformationsDisplayer();
            for (int i = 0; i < ial.Length; i++)
            {
                var dist = Vector3.Distance(ial[i].transform.position, pos);
                bool isChest = ial[i].name.StartsWith("Container1") || ial[i].name.StartsWith("Container2") || ial[i].name.StartsWith("Container3");
                bool isTooFar = dist > range.Value;
                bool isChestButNotAllowed = isChest && !allowStoreInChests.Value;

                if (isTooFar || !isChest || isChestButNotAllowed)
                {
                    if (allowStoreInChests.Value)
                    {
                        Dbgl($"skipping inventory {ial[i].name} because it is too far away or not a chest or not allowed to store in chests");
                    }
                    if (!isChest)
                    {
                        Dbgl($"skipping inventory {ial[i].name} because it is not a chest");
                    }
                    continue;
                }

                if(isDebug.Value) {
                    Dbgl($"checking inventory: {ial[i].name}");
                }
                int _inventoryId = AccessTools.FieldRefAccess<InventoryAssociated, int>(ial[i], "_inventoryId");
                var inventory = InventoriesHandler.Instance.GetInventoryById(_inventoryId);

                if (inventory is null || inventory == backpackInventory)
                {
                    if (inventory is null)
                    {
                        Dbgl($"skipping inventory {ial[i].name} because it is null");
                    }
                    if (inventory == backpackInventory)
                    {
                        Dbgl($"skipping inventory {ial[i].name} because it is the backpack");
                    }

                    continue;
                }

                // Snapshot this container's current contents (for storeIfAlreadyContains filter).
                var objList = inventory.GetInsideWorldObjects().ToList();

                // Compute optimistic remaining capacity for this container this call.
                // This is an estimate for loop control only — the server RPC remains authoritative.
                int remainingCapacity = inventory.GetSize() - objList.Count;
                if (remainingCapacity <= 0)
                {
                    Dbgl($"skipping inventory {ial[i].name} because it is at capacity");
                    continue;
                }

                Dbgl($"checking close inventory {ial[i].name}: {ial[i].transform.position}, {pos}: {dist}m, capacity: {remainingCapacity}");

                var objectText = ial[i].GetComponent<WorldObjectText>();
                var containerName = TryGetContainerName(objectText);

                if (!string.IsNullOrEmpty(requireNameFlagtoStore.Value) && (containerName == null || !containerName.Contains($"{requireNameFlagtoStore.Value}")))
                {
                    Dbgl($"skipping inventory {ial[i].name} because it does not contain the required name flag");
                    continue;
                }

                if ((storeIfContainerNameExact.Value || storeIfContainerNameContains.Value) && containerName == null)
                {
                    Dbgl($"skipping inventory {ial[i].name} because its name could not be retrieved");
                    continue;
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
                        Dbgl($"skipping inventory {ial[i].name} because it is at capacity");
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
                        (!storeIfContainerNameExact.Value || containerName != itemName) &&
                        (!storeIfContainerNameContains.Value || !containerName.Contains(itemName)) &&
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

                    Dbgl($"Queuing move of {groupName} to {ial[i].name}");

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

                // Stop scanning containers once all backpack items have been claimed by some container.
                if (unclaimedCount == 0)
                {
                    Dbgl($"stored all items");
                    break;
                }
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
