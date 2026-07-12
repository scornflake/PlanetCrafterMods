using System;
using SpaceCraft;
using Unity.Netcode;

/// <summary>
/// Netcode utility helpers for multiplayer-safe game state mutations in The Planet Crafter.
///
/// This class wraps Unity Netcode for GameObjects (NGO) patterns to ensure mods safely interact with the
/// host-authoritative multiplayer model. See netcode.md for detailed architecture and usage guidance.
///
/// Future additions (deferred to next usage):
/// - WorldObjectsHandler.CreateAndInstantiateWorldObject(Group, Vector3, Quaternion, ...)
/// - WorldObjectsHandler.CreateAndDropOnFloor(Group, Vector3, ...)
/// - WorldObjectsHandler.DestroyWorldObject(WorldObject, bool)
/// </summary>
public static class NetcodeUtils
{
    /// <summary>
    /// Check if a multiplayer network session is currently active and listening for RPCs.
    /// Safe to call from any context (no NetworkBehaviour instance required).
    /// </summary>
    public static bool IsNetworkActive()
    {
        var nm = NetworkManager.Singleton;
        return nm != null && nm.IsListening;
    }

    /// <summary>
    /// Check if the local instance is a server or host (both can execute server-side logic).
    /// Requires IsNetworkActive() == true; undefined if called when network is inactive.
    /// </summary>
    public static bool IsServerOrHost()
    {
        if (!IsNetworkActive())
            return false;
        return NetworkManager.Singleton.IsServer;
    }

    /// <summary>
    /// Check if the local instance is a host (server + local player simultaneously).
    /// Requires IsNetworkActive() == true; undefined if called when network is inactive.
    /// </summary>
    public static bool IsHost()
    {
        if (!IsNetworkActive())
            return false;
        return NetworkManager.Singleton.IsHost;
    }

    /// <summary>
    /// Check if the local instance is a remote player (client only, not the server).
    /// Requires IsNetworkActive() == true; undefined if called when network is inactive.
    /// </summary>
    public static bool IsRemoteClientOnly()
    {
        if (!IsNetworkActive())
            return false;
        return NetworkManager.Singleton.IsClient && !NetworkManager.Singleton.IsServer;
    }

    /// <summary>
    /// Safely remove a WorldObject from an inventory, handling all netcode overhead.
    ///
    /// The operation is asynchronous via queued ClientRpc callbacks even on the server/host — do not
    /// assume synchronous completion.
    ///
    /// Null-safe: if any critical precondition is null/invalid, immediately invokes onComplete(false).
    ///
    /// Parameters:
    ///   worldObject: The item to remove (must exist and belong to inventory at call time)
    ///   inventory: Source inventory (e.g. a container)
    ///   onComplete: Callback fired when the remove succeeds (true) or fails (false), invoked asynchronously
    /// </summary>
    public static void RemoveItemFromInventory(
        WorldObject worldObject,
        Inventory inventory,
        Action<bool> onComplete = null)
    {
        var handler = InventoriesHandler.Instance;
        if (handler == null || worldObject == null || inventory == null)
        {
            onComplete?.Invoke(false);
            return;
        }

        handler.RemoveItemFromInventory(worldObject, inventory, false, onComplete);
    }

    /// <summary>
    /// Safely move a WorldObject from one inventory to another, handling all netcode overhead.
    ///
    /// This method chains InventoriesHandler's safe wrappers: first AddItemToInventory on the destination,
    /// then on success RemoveItemFromInventory from the source. The operation is asynchronous via queued
    /// ClientRpc callbacks even on the server/host — do not assume synchronous completion.
    ///
    /// Null-safe: if any critical precondition is null/invalid, immediately invokes onComplete(false).
    /// No rollback on partial failure (e.g. add succeeds, remove fails) — this scenario is not expected
    /// since the item legitimately belongs to the source inventory at call time.
    ///
    /// Parameters:
    ///   worldObject: The item to move (must exist and belong to sourceInventory at call time)
    ///   sourceInventory: Origin inventory (e.g. player backpack)
    ///   destinationInventory: Target inventory (e.g. a container)
    ///   resetPositionAndRotation: If true, resets the item's position/rotation when added to destination
    ///   onComplete: Callback fired when the move succeeds (true) or fails (false), invoked asynchronously
    /// </summary>
    public static void MoveItemBetweenInventories(
        WorldObject worldObject,
        Inventory sourceInventory,
        Inventory destinationInventory,
        bool resetPositionAndRotation = true,
        Action<bool> onComplete = null)
    {
        var handler = InventoriesHandler.Instance;
        if (handler == null || worldObject == null || sourceInventory == null || destinationInventory == null)
        {
            onComplete?.Invoke(false);
            return;
        }

        // Chain: try to add to destination, then on success remove from source.
        // Both calls are async (callback deferred via queued ClientRpc even on server/host).
        handler.AddItemToInventory(worldObject, destinationInventory, resetPositionAndRotation, addSucceeded =>
        {
            if (!addSucceeded)
            {
                onComplete?.Invoke(false);
                return;
            }

            // Add succeeded — now remove from source to complete the move.
            handler.RemoveItemFromInventory(worldObject, sourceInventory, false, removeSucceeded =>
            {
                onComplete?.Invoke(removeSucceeded);
            });
        });
    }
}
