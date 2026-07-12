using BepInEx;
using BepInEx.Configuration;
using BepInEx.Logging;
using HarmonyLib;
using SpaceCraft;
using System.Collections.Generic;
using System.Reflection;
using UnityEngine;
using UnityEngine.InputSystem;
using Debug = UnityEngine.Debug;

namespace ConstructToInventory
{
    [BepInPlugin("aedenthorn.ConstructToInventory", "Construct To Inventory", "0.2.0")]
    public partial class BepInExPlugin : BaseUnityPlugin
    {
        private static BepInExPlugin context;

        private static ConfigEntry<bool> modEnabled;
        private static ConfigEntry<bool> isDebug;



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


            Harmony.CreateAndPatchAll(Assembly.GetExecutingAssembly(), null);
            Dbgl("Plugin awake");

        }

        [HarmonyPatch(typeof(UiWindowConstruction), "Construct")]
        private static class UiWindowConstruction_Construct_Patch
        {
            static bool Prefix(GroupConstructible groupConstructible)
            {
                if (!modEnabled.Value || Keyboard.current == null || !Keyboard.current.leftShiftKey.isPressed)
                    return true;
                Dbgl($"Trying to build into inventory");

                PlayerMainController activePlayerController = Managers.GetManager<PlayersManager>().GetActivePlayerController();
                Inventory backpackInventory = activePlayerController.GetPlayerBackpack().GetInventory();
                if (backpackInventory.IsFull())
                    return true;

                List<Group> ingredientsGroupInRecipe = groupConstructible.GetRecipe().GetIngredientsGroupInRecipe();
                bool freeCraft = Managers.GetManager<GameSettingsHandler>().GetCurrentGameSettings().GetFreeCraft();
                if (!freeCraft && !backpackInventory.ContainsItems(ingredientsGroupInRecipe))
                    return true;

                // Skip the vanilla Construct() call entirely (return false below) — we're
                // replacing world-placement with a direct-to-inventory build, not adding to it.
                NetcodeUtils.AddNewItemToInventory(groupConstructible, backpackInventory, (added, _) =>
                {
                    if (!added)
                    {
                        Dbgl("Failed to add constructed item to inventory", LogLevel.Warning);
                        return;
                    }
                    if (!freeCraft)
                    {
                        NetcodeUtils.RemoveItemsFromInventory(ingredientsGroupInRecipe, backpackInventory);
                    }
                });
                return false;
            }
        }
    }
}
