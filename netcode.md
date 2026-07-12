# Netcode Architecture & Multiplayer Mod Guidance

## Scope

This document explains how **The Planet Crafter**'s multiplayer netcode works and what mod authors in this repo must do to avoid desynchronization bugs. It covers the current native co-op implementation (shipped in v1.0, April 2024), built on Unity Netcode for GameObjects (NGO).

**Related:** See the root [README.md](README.md) for installation, configuration, and per-mod settings.

> **Note on legacy mods:** An older community multiplayer mod (`akarnokd`'s "(Feat) Multiplayer") used a different, custom TCP-based networking system and is now discontinued. This document does **not** cover that system — it is unrelated to the current native co-op and should not be used as a reference. One mod in this repo (`CustomWeatherEvents`) contains vestigial reflection checks for that legacy mod; see [section 7](#vestigial-patterns) for context.

---

## 1. Architecture Overview

### Networking Stack

| Component | Details |
|-----------|---------|
| **Netcode Framework** | Unity Netcode for GameObjects (NGO) — `Unity.Netcode.Runtime.dll` |
| **Transport Layer** | Steam Networking Sockets + Steamworks.NET (for Steam); also GOG Galaxy and PlayFab/Xbox GDK support for other storefronts |
| **Replication Model** | **Host-authoritative:** one host process owns canonical state; remote clients replicate via RPCs and server-pushed broadcasts |

### Host-Authoritative Model

The game uses the host-authority pattern:

- **Host** = both server and a local player simultaneously (`IsHost == true`, `IsServer == true`, `IsClient == true`)
- **Dedicated Server** = server only, no local player (`IsServer == true`, `IsHost == false`, `IsClient == false`)
- **Remote Player** = pure client, reads replicated state (`IsServer == false`, `IsHost == false`, `IsClient == true`)

Canonical state (inventory contents, world objects, etc.) lives **only on the server/host side**. Clients hold replicated copies. Any mutation must go through an RPC call to the server, which performs the mutation, updates its own authoritative copy, and then broadcasts the change back to all clients via a client RPC.

**Direct local mutation (without RPCs) causes silent desynchronization** — your local view updates but the server never sees it, and the next state sync from the server overwrites your change.

### NGO Primitives (Glossary)

- **`NetworkBehaviour`** — base class for any game logic that needs network replication; extends `MonoBehaviour`
- **`NetworkVariable<T>`** — a replicated field that syncs automatically when the server changes it; clients can observe but only the server can write
- **`NetworkList<T>`** — a replicated collection (list) for sending collections over the network
- **`NetworkObject`** — wraps a GameObject to make it spawnable/despawnable over the network
  - `Spawn()` — instantiate on server, replicate to all clients
  - `SpawnWithOwnership(ulong owner, bool destroyWithScene)` — spawn with a specific owner
  - `Despawn(bool destroyGameObject)` — remove from the network and destroy (or hide) locally
  - `IsSpawned`, `IsOwner`, `IsServer`, `IsHost`, `IsClient` — status queries
- **RPCs** — remote procedure calls; two attribute styles coexist in this codebase:
  - Legacy: `[ServerRpc]` (call to server), `[ClientRpc]` (call to all clients)
  - Modern: `[Rpc(SendTo.Server)]`, `[Rpc(SendTo.ClientsAndHost)]`, etc.

---

## 2. Detecting Local vs. Remote Player Context in a Harmony Patch

When patching game code with Harmony, you often can't tell whether the code is running on the host or a remote client. To branch on player role, use this idiom:

```csharp
using Unity.Netcode;

var nm = NetworkManager.Singleton;
if (nm == null || !nm.IsListening)
{
    // No active network session (e.g., main menu, local save not yet loaded)
    // Safe to skip network logic entirely
    return;
}

// Now safe to check role
bool amServerOrHost     = nm.IsServer;               // true on both dedicated server and host
bool amHost             = nm.IsHost;                 // true only on host (server+player)
bool amRemoteClientOnly = nm.IsClient && !nm.IsServer; // true on remote players only
```

This is **the standard idiom used throughout the game's own code** — confirmed in `InventoriesHandler.RemoveItemFromInventory`, `RequireEnergyHandler.AddToRequester`, `InventorySpawnContent.OnEnable`, and many other classes. There is no game-specific wrapper (checking `SpaceCraft.NetworkUtils` confirms it only has RPC-parameter helpers) — mods should follow this pattern identically.

**Important:** This idiom works uniformly in **both singleplayer and multiplayer** because singleplayer is actually implemented as host-with-no-remote-clients under NGO. Your Harmony patch does not need separate singleplayer/multiplayer branches — the same check works everywhere.

---

## 3. Safe Entry Points Reference

The game exposes several public wrapper methods that handle networking correctly. **Always use these instead of calling lower-level inventory/object methods directly.**

### Adding/Removing Items from an Inventory

| Goal | ❌ Unsafe Direct Call | ✅ Safe Wrapper | Why the unsafe version breaks |
|------|----------------------|-----------------|------------------------------|
| Add an existing `WorldObject` to an inventory | `inventory.AddItem(worldObject)` | `InventoriesHandler.Instance.AddItemToInventory(WorldObject, Inventory, bool resetPositionAndRotation=true, Action<bool> result=null)` | Direct `Inventory.AddItem` is a plain `List<WorldObject>.Add()` with zero RPC — server never sees the change, so it doesn't broadcast to other clients |
| Create a new item (by `Group`) and place directly into an inventory | `WorldObjectsHandler.Instance.CreateNewWorldObject(group)` + `inventory.AddItem(...)` | `InventoriesHandler.Instance.AddItemToInventory(Group, Inventory, Action<bool,int> result=null)` | Both parts are unsafe: `CreateNewWorldObject` just allocates locally (no `NetworkObject.Spawn`), and the direct `AddItem` skips replication — other clients never see the item exist |
| Remove an item from an inventory | `inventory.RemoveItem(worldObject)` | `InventoriesHandler.Instance.RemoveItemFromInventory(WorldObject, Inventory, bool destroy=false, Action<bool> result=null)` | Direct `Inventory.RemoveItem` is a plain `List.Remove()` — removal never reaches the server, so other clients still see the item in their replicated copy |
| Bulk remove by `Group` list | Direct `RemoveItem` in a loop | `InventoriesHandler.Instance.RemoveItemsFromInventory(List<Group>, Inventory, bool destroy=false, bool displayInformation=false, Action<bool> result=null)` | Same as above; loop of direct calls bypasses all replication |

### Spawning and Despawning World Objects

| Goal | ❌ Unsafe | ✅ Safe Wrapper | Why it matters |
|------|---------|-----------------|-----------------|
| Spawn a new world object in the world (not into an inventory) | `WorldObjectsHandler.Instance.CreateNewWorldObject(group)` (local allocation only) | `WorldObjectsHandler.Instance.CreateAndInstantiateWorldObject(Group, Vector3, Quaternion, bool disolve=false, bool checkSpawnPosition=false, bool save=true, bool addDeconstructIcon=false, Action<GameObject> result=null)` | Safe wrapper routes through `CreateAndInstantiateWorldObjectServerRpc`, which spawns the `NetworkObject` so all clients see it |
| Drop an item on the ground | Direct list mutation + GameObject instantiation (if done manually) | `WorldObjectsHandler.Instance.CreateAndDropOnFloor(Group, Vector3 position, float dropSize=…, bool save=…, bool ownershipToNearestClient=…, float despawnTime=…)` | Safe wrapper handles the `NetworkObject.Spawn` and broadcasts the position/rotation to all clients |
| Destroy/despawn a world object | — | `WorldObjectsHandler.Instance.DestroyWorldObject(WorldObject, bool destroyGameObject=false)` (or the `int woId` overload) | Checks `IsServer`; if on client, dispatches `DestroyWorldObjectServerRpc`; if on server, performs `NetworkObject.Despawn(true)` so all clients see the removal |

**Key insight:** All safe wrappers already internally branch on `IsServer` (or unconditionally dispatch ServerRpcs that the server handles inline). Your Harmony patch should **not** try to duplicate this branching — just always call the wrapper. If you need to guard the entire operation for non-network contexts (e.g., main menu), add your own `NetworkManager.Singleton.IsListening` check before calling the wrapper (as shown in section 2).

---

## 4. Case Study: QuickStore

QuickStore (`QuickStore/BepInExPlugin.cs`) is triggered by a Harmony postfix on `PlayerInputDispatcher.Update`, which calls the mod's `StoreItems()` method. This method:

1. Uses reflection to extract the `_inventoryId` field from nearby `InventoryAssociated` objects:
   ```csharp
   int _inventoryId = AccessTools.FieldRefAccess<InventoryAssociated, int>(ial[i], "_inventoryId");
   var inventory = InventoriesHandler.Instance.GetInventoryById(_inventoryId);
   ```

2. Calls direct `Inventory` methods to move items (lines 134 and 137):
   ```csharp
   if (inventory.AddItem(objects[j]))
   {
       informationsDisplayer.AddInformation(...);
       Managers.GetManager<PlayersManager>().GetActivePlayerController()
           .GetPlayerBackpack().GetInventory().RemoveItem(objects[j]);
   }
   ```

### Why This Breaks in Multiplayer

- **On the host:** The local inventory updates immediately (so the host sees the item disappear), but the broadcast RPC is never fired. Other clients never receive the change; their copies stay out of sync.
- **On a remote client:** The direct `AddItem` and `RemoveItem` calls only mutate the client's local copy. The server (host) never knows the operation happened, so when the server's next state sync arrives, it overwrites the client's local change, reverting it.

### The Fix (Architecture Only)

Replace the direct `Inventory.AddItem`/`RemoveItem` calls with the safe wrappers:

```csharp
// Instead of:
// inventory.AddItem(objects[j]);
// ...GetInventory().RemoveItem(objects[j]);

// Use:
InventoriesHandler.Instance.AddItemToInventory(objects[j], inventory);
InventoriesHandler.Instance.RemoveItemFromInventory(
    objects[j],
    Managers.GetManager<PlayersManager>().GetActivePlayerController()
        .GetPlayerBackpack().GetInventory()
);
```

The safe wrappers handle all the networking logic (ServerRpc dispatch, client-side forwarding, server-side broadcast) automatically.

---

## 5. Other Mods with Similar Issues

A scan of the repository found other mods with the same anti-pattern:

### Confirmed Unsafe (Same Bug as QuickStore)

| Mod | Location | Issue | Affected Functionality |
|-----|----------|-------|------------------------|
| CraftFromContainers | `BepInExPlugin.cs:156` | Direct `inventory.RemoveItem()` | Pulling items from nearby containers |
| AutoMine | `BepInExPlugin.cs:196` | Direct `inventory.AddItem()` on player backpack | Auto-mining items into inventory |
| ChatCommands | `BepInExPlugin.cs:279` | `CreateNewWorldObject` + direct `AddItem` | `/give` command spawning items into backpack |
| SpawnObject | `BepInExPlugin.cs:232` | `CreateNewWorldObject` + direct `AddItem` | Spawning objects into inventory |
| ConstructToInventory | `BepInExPlugin.cs:56` | `CreateNewWorldObject` + direct `AddItem` | Auto-storing deconstructed items |

### Mods Using Safe APIs (No Fix Needed)

| Mod | Location | Safe Call | Status |
|-----|----------|-----------|--------|
| ChatCommands | `BepInExPlugin.cs:288` | `CreateAndDropOnFloor(...)` | ✓ correct |
| SpawnObject | `BepInExPlugin.cs:242` | `CreateAndDropOnFloor(...)` | ✓ correct |
| Delete | `BepInExPlugin.cs:78` | `DestroyWorldObject(...)` | ✓ correct |

### Not a Bug

| Mod | Location | Reason |
|-----|----------|--------|
| StorageAnywhere | `BepInExPlugin.cs:218,274` | `GetInventoryById` is used only for UI wiring and read-only queries (`.GetSize()`), never for mutations |

---

## 6. Vestigial Patterns

### The Discontinued FeatMultiplayer Mod (Do Not Copy)

The mod `CustomWeatherEvents` (`BepInExPlugin.cs:77`) contains this pattern:

```csharp
if (akarnokd.theplanetcraftermods.featmultiplayer.Multiplayer.apiGetMultiplayerMode() == "CoopClient")
    return;
```

This is a **legacy pattern** that checks an external, now-discontinued mod's API. **Do not replicate this check in new mods** — the `akarnokd` FeatMultiplayer mod is not compatible with the game's current native NGO co-op and is explicitly marked as discontinued.

**Why it's mentioned here:** It explains why some mods may have had multiplayer support in the past. The timeline:
- The game initially shipped singleplayer-only
- Community mod `akarnokd`'s FeatMultiplayer added custom TCP-based co-op with its own host-authority and API
- Later, the game officially added native NGO-based co-op (v1.0, April 2024)
- FeatMultiplayer became incompatible and is now discontinued

The suspicion (mentioned in Nexus comments on QuickStore's page, though not independently verifiable due to access restrictions) is that QuickStore and similar mods worked with FeatMultiplayer's co-op but broke when the game switched to native NGO.

### Correct Pattern: Reading NetworkVariable State via Harmony (Do Copy)

The same mod (`CustomWeatherEvents`) also does this correctly:

```csharp
private static void Patch_TryToLaunchAnEventLogic(MeteoHandler __instance)
{
    NetworkVariable<int> selectedDataMeteoEventIndex = 
        AccessTools.FieldRefAccess<MeteoHandler, NetworkVariable<int>>(
            __instance, "____selectedDataMeteoEventIndex");
    
    if (selectedDataMeteoEventIndex.Value == ...)
    {
        // read the networked value
    }
}
```

This **is a valid pattern** for read-only access to `NetworkVariable` state from a Harmony patch. The key point: you're only *reading* the replicated value, not trying to write to it. Use this pattern when you need to observe NGO state from code that doesn't have a direct component reference.

---

## 7. Checklist for Future Mod PRs

Before submitting a mod that interacts with the world, inventory, or craft system:

- [ ] **Does this code run in a Harmony patch that could fire on a remote client?** If yes, add a guard: check `NetworkManager.Singleton.IsListening` before making any state mutations. If no, it's safe.
- [ ] **Am I calling `Inventory.AddItem` or `Inventory.RemoveItem` directly?** If yes, replace with `InventoriesHandler.Instance.AddItemToInventory(...)` / `RemoveItemFromInventory(...)`.
- [ ] **Am I calling `WorldObjectsHandler.CreateNewWorldObject` or `InstantiateWorldObject` directly?** If yes, use `WorldObjectsHandler.CreateAndInstantiateWorldObject(...)` instead for world spawns, or `InventoriesHandler.AddItemToInventory(Group, Inventory)` for inventory-bound items.
- [ ] **Do I read/observe `NetworkVariable` state?** Use `AccessTools.FieldRefAccess<T, NetworkVariable<U>>` to extract and then read `.Value` — this is the correct pattern.
- [ ] **Have I tested as a remote client, not just the host?** Desync bugs are invisible to the host. Host and client roles see very different behavior — test both.

---

## 8. References

- **Archived IL evidence:** [`reference/decompiled-il/`](reference/decompiled-il/) — raw IL disassembly of key `Assembly-CSharp.dll` classes (InventoriesHandler, Inventory, WorldObjectsHandler, etc.), preserved as evidence backing this document's claims. See [`reference/decompiled-il/README.md`](reference/decompiled-il/README.md) for details.

- **Game assembly:** `F:\SteamLibrary\steamapps\common\The Planet Crafter\Planet Crafter_Data\Managed\Assembly-CSharp.dll`
  - Decompile this to inspect `SpaceCraft.InventoriesHandler`, `SpaceCraft.WorldObjectsHandler`, `SpaceCraft.Inventory`, and related classes
  - Use dnSpy, ILSpy, or similar; or fallback to `ildasm.exe` for raw IL disassembly
  
- **Unity Netcode for GameObjects DLL:** Referenced in [`solution.targets`](solution.targets) (lines 221–225), resolved via `$(ManagedDataPath)` pointing to your game's `Managed` folder

- **Shared netcode utility class:** [`AedenthornUtils/NetcodeUtils.cs`](AedenthornUtils/NetcodeUtils.cs) — role detection helpers and async-safe inventory transfer wrapper, meant for reuse by other mod fixes (see class header for planned additions like spawn/despawn wrappers).

