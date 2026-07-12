# Decompiled IL Reference Materials

This directory contains raw Common Intermediate Language (IL) disassemblies of key `Assembly-CSharp.dll` classes from *The Planet Crafter*, preserved as evidence backing the technical guidance in [netcode.md](../../netcode.md).

## Why These Exist

The `netcode.md` document makes claims about how multiplayer netcode works — what methods are network-safe RPC wrappers, which direct mutations cause desync, how the host-authoritative model works, etc. These claims are grounded in the actual game code, not guesses. This directory preserves the decompiled evidence so:

- Future readers can verify claims independently without needing to re-decompile the game DLLs.
- Future contributors fixing other mods (e.g., AutoMine, ChatCommands, SpawnObject) have a reference for what the safe APIs look like.
- The investigation is reproducible: you can trace the exact IL signatures and method bodies that informed the architecture document.

## Files

| File | Size | Classes Contained | Relevance |
|------|------|-------------------|-----------|
| `InventoriesHandler.il` | 648 KB | `SpaceCraft.InventoriesHandler` | Contains the safe wrapper methods (`AddItemToInventory`, `RemoveItemFromInventory`, etc.) and their ServerRpc/ClientRpc dispatch logic. Core to understanding inventory mutations. |
| `Inventory.il` | 66 KB | `SpaceCraft.Inventory` | The raw, non-networked `AddItem` and `RemoveItem` methods that direct calls bypass. Demonstrates why direct mutation causes desync. |
| `WorldObjectsHandler.il` | 610 KB | `SpaceCraft.WorldObjectsHandler` | Contains spawn/despawn entry points (`CreateAndInstantiateWorldObject`, `CreateAndDropOnFloor`, `DestroyWorldObject`). |
| `WorldObject.il` | 54 KB | `SpaceCraft.WorldObject` | The game object wrapper, referenced by inventory and spawn logic. |
| `MeteoHandler.il` | 119 KB | `SpaceCraft.MeteoHandler` | Example of a NetworkBehaviour that correctly uses `NetworkVariable` state. Referenced in netcode.md's vestigial-patterns section. |
| `PlayerMainController.il` | 240 KB | `SpaceCraft.PlayerMainController` | Player/manager logic, used to understand `NetworkManager.Singleton` access patterns. |

## How These Were Generated

```bash
ildasm.exe <path-to-game-DLL> /out:full-dump.il
# Then extract individual class blocks by name, e.g.:
grep -A 50000 "^.class.*InventoriesHandler" full-dump.il > InventoriesHandler.il
```

The game DLL is located at:
```
F:\SteamLibrary\steamapps\common\The Planet Crafter\Planet Crafter_Data\Managed\Assembly-CSharp.dll
```

`ildasm.exe` is part of the .NET Framework SDK (e.g., `C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\ildasm.exe`).

## How to Regenerate or Extend

To regenerate these files (e.g., after a game update) or add more class IL:

1. Locate `Assembly-CSharp.dll` in your Planet Crafter installation's `<GameRoot>\Planet Crafter_Data\Managed\` folder.
2. Run `ildasm.exe Assembly-CSharp.dll /out:full-dump.il` to disassemble the entire assembly (~18 MB raw IL text).
3. Extract individual class blocks:
   ```bash
   grep -A 100000 "^.class.*<ClassName>" full-dump.il | grep -B 10000 "^}" > <ClassName>.il
   ```
   (Adjust `-A` and `-B` line counts based on class size; use a large number and trim manually if needed.)
4. Commit the updated `.il` file(s) to preserve the evidence.

Note: The full `Assembly-CSharp.il` dump (~18 MB) is not kept in this repo because it's a bulky generated artifact and trivially reproducible from the game's public DLL. Only human-reviewed, focused extracts are kept.

## Snapshot Nature

These files are snapshots of the game as of July 2024 (v1.0+, exact version/build number was not pinned during extraction). They are **not** a live/authoritative source — a future game update may change these implementations. Use them as reference material for understanding the design at the time of the `netcode.md` investigation, not as guarantees about the current game build.

If you suspect a game update has broken these assumptions:
1. Re-disassemble the current `Assembly-CSharp.dll` using the steps above.
2. Compare the method signatures and RPC dispatch patterns.
3. Update `netcode.md` and these `.il` files accordingly.
