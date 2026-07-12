# Guidance for AI Agents Working on This Repo

This file documents patterns, constraints, and helpful procedures for Claude Code or other AI agents assisting with this repository.

## Repo Overview

- **Purpose:** Collection of independent BepInEx/HarmonyX mods for *The Planet Crafter* (Unity game with multiplayer support via Unity Netcode for GameObjects).
- **Structure:** Each mod is a standalone `.csproj` project in its own folder, producing a separate DLL.
- **Shared code pattern:** No DLL references between mods. Shared utilities (e.g., `AedenthornUtils.cs`, `NetcodeUtils.cs`) are **source-linked** via MSBuild `<Compile Include>` directives in each consuming mod's `.csproj` — they are compiled directly into each mod's assembly, not referenced as external DLLs.
- **Build system:** MSBuild `.targets` files (`solution.targets`, `solution_private.targets`) handle game DLL resolution and common properties.
- **Solution file:** `PlanetCrafterMods.sln` — most mods are included; some unrelated/legacy projects may have issues (e.g., missing dependencies).

## Before Building

Check that `solution_private.targets` exists and is configured:

```bash
ls -la d:\Development\PlanetCrafterMods\solution_private.targets
```

This file should define `<GamePath>` pointing to your Planet Crafter installation. Example:

```xml
<GamePath>F:\SteamLibrary\steamapps\common\The Planet Crafter</GamePath>
```

If missing or misconfigured, the build will fail to resolve game DLLs. **Do not attempt to create this file yourself** — it is machine-local and gitignored (user's game install path is private).

## After a Full Build

A full `dotnet build PlanetCrafterMods.sln` creates hundreds of temporary artifacts:

- **~50 projects × 2 = ~100 `bin/` and `obj/` directories** (each project has both Debug and Release configs)
- **One `.zip` file per project** (packaged build outputs, typically in `<project>\bin\<config>\Release\`)
- **Total disk usage: ~150–200 MB of temporary files**

`bin/`, `obj/`, and `*.zip` are already covered by `.gitignore`, so they never show up in `git status` — no cleanup step is needed before checking status or committing.

**`cleanup-build-artifacts.ps1` is a different, unrelated script — read it before running it.** Despite its name, it does not touch repo build artifacts at all. It deletes `.dll` files from the **live game's** BepInEx plugins folder (`F:\SteamLibrary\steamapps\common\The Planet Crafter\BepInEx\plugins`), keeping only a hardcoded allowlist (`$keepFiles` in the script — currently `QuickStore.dll`, `CraftFromContainers.dll`, `CustomFlashlight.dll`). Running it will silently remove any other mod's deployed DLL from the game install, including ones you just built. Only run it when you actually intend to prune stale deployed mods from the game folder, and update `$keepFiles` first if a mod you're working on should survive the prune.

## Key Files and Conventions

| File/Path | Purpose | Notes |
|-----------|---------|-------|
| `README.md` | Root-level mod documentation | Covers installation, configuration per-mod settings. |
| `netcode.md` | Multiplayer netcode architecture guide | Explains Unity NGO model, safe APIs, and common anti-patterns. Reference for fixing mods. |
| `solution.targets` | Shared MSBuild imports | Defines game DLL references, `Unity.Netcode.Runtime`, etc. |
| `solution_private.targets` | Machine-local build config (gitignored) | User's game path; created/maintained by user only. |
| `AedenthornUtils/AedenthornUtils.cs` | Shared utilities (source-linked) | Key/input helpers, asset path handling, etc. |
| `AedenthornUtils/NetcodeUtils.cs` | Netcode-safe helpers (source-linked) | Role detection, async inventory transfer. Added in recent fix. |
| `reference/decompiled-il/` | Game code evidence (IL disassembly) | Backing evidence for netcode.md claims. See `reference/decompiled-il/README.md`. |

## Working with Mods

### Source-Linking Shared Code

If a mod needs to use `AedenthornUtils` or `NetcodeUtils`, add to its `.csproj`:

```xml
<ItemGroup>
  <Compile Include="..\AedenthornUtils\AedenthornUtils.cs" Link="AedenthornUtils.cs" />
  <Compile Include="..\AedenthornUtils\NetcodeUtils.cs" Link="NetcodeUtils.cs" />
</ItemGroup>
```

Do **not** add a project reference — the source file is compiled directly into the mod's DLL.

### Harmony Patching Best Practices

- Use `AccessTools.FieldRefAccess<T, FieldType>` to safely reflect into private fields.
- Use `AccessTools.Method()` to locate methods with ambiguous overloads.
- Patches run in static contexts (no component `this` reference). Use `NetworkManager.Singleton` for netcode checks, never assume a `NetworkBehaviour` instance is in scope.
- See `netcode.md` section 2 for the canonical role-detection idiom.

### Netcode Awareness (Multiplayer Mods)

**Read `netcode.md` before writing any code that mutates inventories or spawns/destroys world objects.**

Common anti-patterns to avoid:
- ❌ Direct `Inventory.AddItem()` / `RemoveItem()` calls (non-networked `List<T>` mutations)
- ❌ Direct `WorldObjectsHandler.CreateNewWorldObject()` calls (local allocation, no spawn replication)
- ❌ Relying on synchronous completion of `InventoriesHandler` wrapper methods (all async, deferred via ClientRpc callback)

Use instead:
- ✅ `InventoriesHandler.Instance.AddItemToInventory(...)` / `RemoveItemFromInventory(...)` with async callbacks
- ✅ `WorldObjectsHandler.CreateAndInstantiateWorldObject(...)` / `CreateAndDropOnFloor(...)` / `DestroyWorldObject(...)`
- ✅ `NetcodeUtils.MoveItemBetweenInventories(...)` for safe item transfers

See `netcode.md` section 3 (Safe Entry Points) for the full reference table.

## Testing and Verification

- **Build verification:** `dotnet build PlanetCrafterMods.sln -c Release` should complete with no errors in QuickStore, CraftFromContainers, ConstructToInventory, CustomWeatherEvents, and other "known good" mods. (Some mods like Cheats, CustomAudio may have pre-existing issues unrelated to your changes.)
- **Quick mod test:** `dotnet build <ModFolder>/<ModName>.csproj -c Release` builds just one mod.

## Investigation Evidence

The `reference/decompiled-il/` folder contains IL disassembly of game classes. This is preserved evidence, not auto-generated. If you need to verify netcode API signatures or understand RPC dispatch patterns:

1. Check `reference/decompiled-il/*.il` files for existing IL (faster than re-decompiling).
2. If the evidence is missing or outdated, re-disassemble the game DLL:
   ```bash
   ildasm.exe "F:\SteamLibrary\steamapps\common\The Planet Crafter\Planet Crafter_Data\Managed\Assembly-CSharp.dll" /out:full-dump.il
   ```
   Then extract individual class blocks and add to `reference/decompiled-il/`.

See `reference/decompiled-il/README.md` for detailed regeneration steps.

## Git Workflow

- **No destructive operations without confirmation:** Always check `git status` before `git reset --hard` or similar.
- **Commit message style:** Brief, imperative ("Add X", "Fix Y", "Refactor Z"), referencing the mod(s) affected and the reason (not just the what).
- **Ignore build artifacts:** `.gitignore` should already exclude `bin/`, `obj/`, `*.zip`, and `solution_private.targets`. If you see these in `git status`, check `.gitignore` — the cleanup script does **not** address this (see "After a Full Build" above).

## Known Issues and Limitations

- **Some mods have pre-existing build failures** (e.g., Cheats depends on `MijuTools`). These are not blockers for other mod work — the solution builds with warnings/errors but other mods succeed.
- **solution_private.targets is gitignored** — each developer must create their own, pointing to their game installation. The repo won't build without it (you'll get DLL resolution errors). If you see a build error like "Assembly-CSharp.dll not found," check that `solution_private.targets` exists.
- **No IL disassembler installed by default** — use `ildasm.exe` (part of .NET Framework SDK) or install ILSpy/dnSpy if you need interactive decompilation.

## For Future Work

When fixing other mods identified in `netcode.md`'s audit table (CraftFromContainers, AutoMine, ChatCommands, SpawnObject):

1. Read the audit entry and understand the exact anti-pattern.
2. Refer to `netcode.md` section 3 (Safe Entry Points) for the replacement API.
3. If the fix involves async operations (likely), follow the QuickStore restructuring pattern: upfront snapshots, local optimistic state tracking, async callbacks for side effects.
4. Source-link `NetcodeUtils` for role detection and inventory transfer helpers.
5. Test in both host and remote-client multiplayer modes.
6. Update the audit table in `netcode.md` and commit with a note about the fix.

---

**Last updated:** July 2024 (after QuickStore netcode fix + NetcodeUtils helper + IL archive)
