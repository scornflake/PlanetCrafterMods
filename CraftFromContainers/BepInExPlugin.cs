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
using Debug = UnityEngine.Debug;

namespace CraftFromContainers
{
    [BepInPlugin("aedenthorn.CraftFromContainers", "Craft From Containers", "0.7.5")]
    public partial class BepInExPlugin : BaseUnityPlugin
    {
        private static BepInExPlugin context;

        private static ConfigEntry<bool> modEnabled;
        private static ConfigEntry<bool> isDebug;
        private static ConfigEntry<bool> pullFromChests;
        private static ConfigEntry<string> toggleKey;
        private static ConfigEntry<string> missingResources;
        private static ConfigEntry<float> range;

        private InputAction action;

        private static bool skip;

        public static void Dbgl(string str = "", LogLevel logLevel = LogLevel.Debug)
        {
            if (isDebug.Value)
                context.Logger.Log(logLevel, str);
        }
        private void Awake()
        {
            context = this;
            modEnabled = Config.Bind<bool>("General", "Enabled", true, "Enable this mod");
            isDebug = Config.Bind<bool>("General", "IsDebug", false, "Enable debug logs");
            pullFromChests = Config.Bind<bool>("Options", "PullFromChests", true, "Allow pulling from chests.");
            toggleKey = Config.Bind<string>("Options", "ToggleKey", "<Keyboard>/home", "Key to toggle pulling");
            missingResources = Config.Bind<string>("Options", "MissingResources", "Missing Resources!", "Message to display if you move out of resource range while building. Set to empty to disable.");
            range = Config.Bind<float>("Options", "Range", 20f, "Pull range (m)");

            if (!toggleKey.Value.Contains("<"))
                toggleKey.Value = "<Keyboard>/" + toggleKey.Value;

            action = new InputAction(binding: toggleKey.Value);
            action.Enable();

            Harmony.CreateAndPatchAll(Assembly.GetExecutingAssembly(), null);
            Dbgl("Plugin awake");

        }

        public void Update()
        {

            if (Managers.GetManager<WindowsHandler>()?.GetHasUiOpen() == false && action.WasPressedThisFrame())
            {
                modEnabled.Value = !modEnabled.Value;
                Dbgl($"Mod enabled: {modEnabled.Value}");
                if(Managers.GetManager<PopupsHandler>() != null)
                    AccessTools.FieldRefAccess<PopupsHandler, List<PopupData>>(Managers.GetManager<PopupsHandler>(), "popupsToPop").Add(new PopupData(null, $"Craft From Containers: {modEnabled.Value}", 2));
            }
        }

        [HarmonyPatch(typeof(PlayerBuilder), nameof(PlayerBuilder.InputOnAction))]
        private static class PlayerBuilder_InputOnAction_Patch
        {
            static bool Prefix(PlayerBuilder __instance, ref ConstructibleGhost ____ghost, float ____timeCreatedGhost, float ____timeCantBuildInterval, GroupConstructible ____ghostGroupConstructible)
            {
                if (!modEnabled.Value || ____ghost == null || (Time.time < ____timeCreatedGhost + ____timeCantBuildInterval && !Managers.GetManager<GameSettingsHandler>().GetCurrentGameSettings().GetFreeCraft()))
                    return true;
                if(!__instance.GetComponent<PlayerBackpack>().GetInventory().ContainsItems(new List<Group>{ ____ghostGroupConstructible }) && !__instance.GetComponent<PlayerBackpack>().GetInventory().ContainsItems(____ghostGroupConstructible.GetRecipe().GetIngredientsGroupInRecipe()))
                {
                    Dbgl("Resources missing! Cancelling build.");
                    if (!string.IsNullOrEmpty(missingResources.Value.Trim()) && Managers.GetManager<PopupsHandler>() != null)
                        AccessTools.FieldRefAccess<PopupsHandler, List<PopupData>>(Managers.GetManager<PopupsHandler>(), "popupsToPop").Add(new PopupData(____ghostGroupConstructible.GetImage(), missingResources.Value, 2));
                    if(____ghost != null)
                        Destroy(____ghost.gameObject);
                    ____ghost = null;
                    return false;
                }
                return true;
            }
        }
        [HarmonyPatch(typeof(Inventory), nameof(Inventory.RemoveItems), new Type[] { typeof(List<Group>) })]
        private static class Inventory_RemoveItems_Patch
        {
            static void Prefix(Inventory __instance, List<Group> groups)
            {
                if (!modEnabled.Value || skip || __instance != Managers.GetManager<PlayersManager>().GetActivePlayerController().GetPlayerBackpack().GetInventory())
                    return;
                List<Group> groupsCopy = new List<Group>();
                groupsCopy.AddRange(groups);

                skip = true;
                List<bool> hasStatus = __instance.ItemsContainsStatus(groups);
                skip = false;
                if (!hasStatus.Contains(false))
                    return;

                Dbgl($"Trying to remove missing items from player inventory:");
                for (int j = 0; j < hasStatus.Count; j++)
                {
                    if (!hasStatus[j])
                    {
                        Dbgl($"{groups[j].GetId()}");
                    }
                }
                Vector3 pos = Managers.GetManager<PlayersManager>().GetActivePlayerController().transform.position;

                // On remote (non-host) clients, a container's Inventory is only reachable via
                // InventoryAssociatedProxy rather than an InventoryAssociated component directly on
                // its own GameObject (confirmed by decompiling Assembly-CSharp.dll and by remote
                // diagnostic logs — see InventoryAssociatedUtils). FindCandidates finds both
                // host-direct and remote-proxy-only containers uniformly; ResolveInventory below
                // resolves whichever kind each one turns out to be. The name filter here accepts
                // everything, matching the original unrestricted FindObjectsByType<InventoryAssociated>
                // scan — all name-based exclusion (Golden Container / Container1 / range) happens
                // per-candidate below, exactly as before.
                Action<string> logDiag = isDebug.Value ? (Action<string>)(msg => Dbgl($"[diag] {msg}")) : null;
                var candidates = InventoryAssociatedUtils.FindCandidates(_ => true, logDiag);

                Dbgl($"got {candidates.Count} inventories");

                bool allFound = false;

                foreach (var candidate in candidates)
                {
                    if (allFound)
                        break;

                    var dist = Vector3.Distance(candidate.Transform.position, pos);
                    if (candidate.Name.Contains("GoldenContainer") || (!pullFromChests.Value && candidate.Name.Contains("Container1")) || dist > range.Value)
                        continue;

                    // Cached resolution: not strictly required here (this Prefix only fires an
                    // async removal, nothing races its result), but used for consistency with the
                    // Postfix below and to cut down on repeated ServerRpc round-trips for the same
                    // container.
                    InventoryAssociatedUtils.ResolveInventoryCached(candidate, inventory =>
                    {
                        if (inventory is null || inventory == Managers.GetManager<PlayersManager>().GetActivePlayerController().GetPlayerBackpack().GetInventory())
                            return;

                        Dbgl($"checking close inventory {candidate.Name}: {candidate.Transform.position}, {pos}: {dist}m");

                        // Snapshot the container's inventory to avoid iterating a live/mutating collection.
                        List<WorldObject> containerSnapshot = new List<WorldObject>(inventory.GetInsideWorldObjects());

                        skip = true;
                        List<bool> hasItems = inventory.ItemsContainsStatus(groupsCopy);
                        skip = false;
                        List<Group> thisGroups = new List<Group>();
                        for (int j = 0; j < hasStatus.Count; j++)
                        {
                            if (!hasStatus[j] && groupsCopy.Contains(groups[j]) && hasItems[groupsCopy.IndexOf(groups[j])])
                            {
                                Dbgl($"\tFound item {groups[j].GetId()} in {candidate.Name}");
                                hasStatus[j] = true;
                                thisGroups.Add(groups[j]);
                                hasItems.RemoveAt(groupsCopy.IndexOf(groups[j]));
                                groupsCopy.Remove(groups[j]);
                            }
                        }
                        foreach (Group group in thisGroups)
                        {
                            for (int j = containerSnapshot.Count - 1; j > -1; j--)
                            {
                                Dbgl($"\thas {containerSnapshot[j].GetGroup().GetId()}");

                                if (containerSnapshot[j].GetGroup() == group)
                                {
                                    var itemToRemove = containerSnapshot[j];
                                    var groupName = Readable.GetGroupName(itemToRemove.GetGroup());
                                    Dbgl($"\tqueuing removal of {groupName}");

                                    // Remove from the snapshot immediately so a recipe requiring
                                    // multiple units of the same Group (thisGroups contains it
                                    // more than once) picks a different WorldObject each time,
                                    // instead of re-matching (and double-queuing removal of) the
                                    // same instance.
                                    containerSnapshot.RemoveAt(j);

                                    // Use the safe async wrapper. The result callback is deferred via queued ClientRpc.
                                    NetcodeUtils.RemoveItemFromInventory(itemToRemove, inventory, success =>
                                    {
                                        Dbgl($"Removal of {groupName} from container: {(success ? "succeeded" : "failed")}");
                                    });
                                    break;
                                }
                            }
                        }
                        if (!hasStatus.Contains(false))
                        {
                            Dbgl($"removed all missing items");
                            allFound = true;
                        }
                    });
                }
            }
        }

        [HarmonyPatch(typeof(Inventory), nameof(Inventory.ItemsContainsStatus))]
        private static class Inventory_ContainsItems_Patch
        {
            static void Postfix(Inventory __instance, List<bool> __result, List<Group> groups)
            {
                if (!modEnabled.Value || skip || __instance != Managers.GetManager<PlayersManager>().GetActivePlayerController().GetPlayerBackpack().GetInventory() || !__result.Contains(false))
                    return;
                List<Group> groupsCopy = new List<Group>();
                groupsCopy.AddRange(groups);
                //Dbgl($"checking status for missing items:");

                for (int j = 0; j < __result.Count; j++)
                {
                    if (!__result[j])
                    {
                        //Dbgl($"{groupsCopy[j].GetId()}");
                    }
                }


                Vector3 pos = Managers.GetManager<PlayersManager>().GetActivePlayerController().transform.position;

                //Dbgl($"got inventories");

                // Same InventoryAssociatedProxy fix as in Inventory_RemoveItems_Patch above: on
                // remote (non-host) clients, containers are only reachable via the proxy, not a
                // direct InventoryAssociated. The name filter accepts everything (matching the
                // original unrestricted scan); exclusion by name/range happens per-candidate below.
                //
                // This is a Harmony Postfix: it mutates __result, which the caller
                // (PlayerBuilder_InputOnAction_Patch's "missing resources" check) reads
                // synchronously right after this method returns. A proxy-backed candidate's
                // Inventory can only be resolved asynchronously (see InventoryAssociatedUtils),
                // so it can never win that race on its first resolution. ResolveInventoryCached
                // still loses that race the first time a given container is seen, but caches the
                // result so every subsequent call (e.g. the player retrying the build) resolves
                // synchronously and succeeds.
                Action<string> logDiag = isDebug.Value ? (Action<string>)(msg => Dbgl($"[diag] {msg}")) : null;
                var candidates = InventoryAssociatedUtils.FindCandidates(_ => true, logDiag);

                bool allFound = false;

                foreach (var candidate in candidates)
                {
                    if (allFound)
                        break;

                    var dist = Vector3.Distance(candidate.Transform.position, pos);
                    if (candidate.Name.Contains("GoldenContainer") || (!pullFromChests.Value && candidate.Name.Contains("Container1")) || dist > range.Value)
                    {
                        //Dbgl($"can't use {candidate.Name}; pfc {pullFromChests.Value}, dist {dist}/{range.Value} ");
                        continue;
                    }

                    InventoryAssociatedUtils.ResolveInventoryCached(candidate, inventory =>
                    {
                        if (inventory is null || inventory == Managers.GetManager<PlayersManager>().GetActivePlayerController().GetPlayerBackpack().GetInventory())
                            return;

                        //Dbgl($"checking close inventory {candidate.Name}: {candidate.Transform.position}, {pos}: {dist}m");
                        skip = true;
                        List<bool> hasItems = inventory.ItemsContainsStatus(groupsCopy);
                        skip = false;
                        for (int j = 0; j < __result.Count; j++)
                        {
                            if (!__result[j] && groupsCopy.Contains(groups[j]) && hasItems[groupsCopy.IndexOf(groups[j])])
                            {
                                //Dbgl($"Found item {_groups[j].GetId()} in {candidate.Name}");
                                __result[j] = true;
                                hasItems.RemoveAt(groupsCopy.IndexOf(groups[j]));
                                groupsCopy.Remove(groups[j]);
                            }
                        }
                        if (!__result.Contains(false))
                        {
                            //Dbgl($"found all items");
                            allFound = true;
                        }
                    });
                }
            }
        }
    }
}
