# PlanetCrafterMods

A collection of independent [BepInEx](https://github.com/BepInEx/BepInEx) mods for the game **[The Planet Crafter](https://store.steampowered.com/app/1284190/The_Planet_Crafter/)**, built with HarmonyX. Each folder in this repo is its own plugin project producing a separate DLL — install only the ones you want.

## Installation

1. Install [BepInEx](https://github.com/BepInEx/BepInEx) (5.x, IL2CPP or Mono build matching your game version) into your Planet Crafter install.
2. Build the mod(s) you want (each folder is a standalone `.csproj`) and drop the resulting DLL into `BepInEx/plugins`.
3. Launch the game once — each mod writes its own config file to `BepInEx/config/<GUID>.cfg` (e.g. `aedenthorn.QuickStore.cfg`), which you can hand-edit or manage with a config manager mod.

## Common conventions

- Almost every mod exposes `General.Enabled` (default `true`) and `General.IsDebug` (default varies) config entries — disable a mod without removing its DLL, or turn on verbose logging. These are omitted from the per-mod settings lists below since they're universal.
- Keybindings are stored as config strings using Unity's new Input System binding-path format, e.g. `<Keyboard>/l` for the `L` key. Edit the corresponding config entry to rebind.
- All mods are authored under the `aedenthorn.*` BepInEx GUID namespace unless noted otherwise.
- **Multiplayer considerations:** See [netcode.md](netcode.md) if you're writing a mod that mutates inventories or spawns/destroys world objects — improper networking calls cause silent desync in co-op.

## Mods

### AutoCrafterTweaks
**Tunes the built-in Auto Crafter machine's range and speed.**

Overrides the Auto Crafter's operating range and crafting interval, and re-applies the new values to every existing auto-crafter when settings change.

**Key Settings**
- `Options.Range` (default `30`) — operating range in meters
- `Options.Interval` (default `1`) — seconds between crafts

---

### AutoMine
**Automatically mines or grabs nearby resources.**

Periodically (or on demand) scans nearby minable/grabbable objects and pulls them straight into your inventory. Supports allow/disallow item-ID filters, and a "specify" mode that locks mining to a single resource type by aiming at it.

**Default Keybindings**
| Key | Action |
|---|---|
| `V` | Toggle interval-based auto-mining on/off |
| `C` | Manually trigger an immediate mining check |
| `B` | Set/reset a single specified target resource (aim at it first) |

**Key Settings**
- `Options.IntervalCheck` (default `true`) — enable automatic periodic mining
- `Options.CheckInterval` (default `3`) — seconds between automatic checks
- `Options.MaxRange` (default `10`) — scan range in meters
- `Options.IncludeGrabbables` (default `false`) — also pick up grabbable (non-minable) objects
- `Options.AllowList` / `Options.DisallowList` — comma-separated item IDs to restrict mining to/exclude

---

### BeaconToggleMenu
**In-game menu to show/hide and rename beacons.**

Adds an on-screen window listing every beacon on the current planet, letting you toggle each one's visibility individually (or all at once) and rename them. Visibility state is saved per save-file.

**Default Keybindings**
| Key | Action |
|---|---|
| `O` | Open/close the beacon menu |

**Key Settings**
- UI section (`UI.*`) — window size/position/colors, row height, button width
- Text section (`Text.*`) — font size/color, window title

---

### BetterJetPack
**Reworks jetpack thrust physics.**

Patches jetpack movement to scale overall speed and adjust the low/high altitude thrust curve used near the ground versus in the air.

**Key Settings**
- `Options.SpeedMult` (default `1`) — overall jetpack speed multiplier
- `Options.HighStartValue` / `Options.HighTargetValue` / `Options.LowStartValue` / `Options.LowTargetValue` — thrust falloff curve endpoints
- `Options.HighCutoffMult` (default `1`) — high-altitude cutoff multiplier

---

### CameraShakeTweaks
**Reduces or disables camera shake.**

Scales down (or fully disables) the intensity and decay rate of the game's camera shake effects.

**Key Settings**
- `Options.DisableShake` (default `false`) — completely disable camera shake
- `Options.ShakeMult` (default `0.5`) — shake intensity multiplier
- `Options.DecreaseMult` (default `1`) — shake decay-rate multiplier

---

### ChatCommands
**Adds developer/utility slash-commands to the in-game chat.**

Adds `/spawn <id> <amount>` (spawn or build an item — hold **Left Shift** while sending the command to add it straight to your inventory instead of dropping/constructing it), `/goto <x> <y> [<z>]` (teleport, raycasting to terrain if `y` is omitted or negative), and `/pos` (print current position). Also adds live autocomplete suggestions while typing `/spawn`.

**Key Settings**
- `Options.DumpItems` (default `true`) — one-time dump of all item IDs/names to `items.txt` for reference (auto-resets after first dump)

---

### Creative Menu
*(Note: this mod's source lives in the `Cheats/` folder and its project file is `CreativeMenu.csproj` — folder name doesn't match the mod.)*

**Toggles the game's built-in creative/balancing menu.**

Opens the game's native "Balancing" UI window used for creative-mode style adjustments.

**Default Keybindings**
| Key | Action |
|---|---|
| `F1` | Toggle the creative menu |

> The mod also defines a `General.ToggleKey` config entry (default `u`), but it is not currently wired up — the effective key is hardcoded to `F1`.

---

### ConstructToInventory
**Builds directly into your inventory instead of the world.**

Hold **Left Shift** while placing a construction to add the finished item straight to your backpack (if there's room and you have/can free-craft the ingredients) instead of placing it in the world.

**Default Keybindings**
| Key | Action |
|---|---|
| `Left Shift` (held while constructing) | Build into inventory instead of the world |

---

### CraftFromContainers
**Lets you craft using resources from nearby containers, not just your inventory.**

When building or crafting, missing ingredients are pulled from nearby chests/lockers within range (excluding the Golden Container by default) instead of failing the build.

**Default Keybindings**
| Key | Action |
|---|---|
| `Home` | Toggle the whole mod on/off |

**Key Settings**
- `Options.PullFromChests` (default `true`) — allow pulling from ordinary chests, not just lockers
- `Options.Range` (default `20`) — pull range in meters
- `Options.MissingResources` (default `"Missing Resources!"`) — popup text shown when you move out of range mid-build; set empty to disable

---

### CustomAudio
**Replaces in-game sound effects with your own `.wav` files.**

Scans a `CustomAudio` folder next to the DLL for replacement audio clips and substitutes them for the game's popup/alert sounds. If no replacement exists for a given sound, the original is dumped to disk as a `.wav` template you can edit.

**Default Keybindings**
| Key | Action |
|---|---|
| `L` | Reload/reapply custom audio clips on demand |

**Key Settings**
- `Options.AllowReload` (default `true`) — enable the reload key

---

### CustomFlashlight
**Customizes the multitool flashlight.**

Overrides the flashlight's beam angle, intensity, range, and color (optionally using color temperature instead of a direct RGB color).

**Key Settings**
- `Options.FlashlightAngle` / `Options.FlashlightInnerAngle` — beam spread
- `Options.FlashlightIntensity` (default `40`) / `Options.FlashlightRange` (default `40`)
- `Options.UseColorTemp` (default `false`) + `Options.ColorTemp` (default `6570`), or `Options.Color` directly

---

### CustomGuageWarnings
**Customizes thirst/hunger/oxygen gauge warning thresholds.**

Intended to let you set custom "caution" and "warning" thresholds for the thirst, hunger, and oxygen gauges.

> The current patch logs the intended threshold change but does not appear to actually rewrite the game's internal constant — settings may not take effect in this version.

**Key Settings**
- `Options.ThirstCaution` / `Options.ThirstWarning` (defaults `25` / `10`)
- `Options.HungerCaution` / `Options.HungerWarning` (defaults `25` / `10`)
- `Options.OxygenCaution` / `Options.OxygenWarning` (defaults `30` / `16`)

---

### CustomWeatherEvents
**Deep customization of weather and asteroid storm events.**

Dumps all discovered weather events to a JSON file (durations, rain/wetness, terraform-stage ranges, spawn weights, asteroid physics) which you can edit and mark `custom` to have your values applied back to the live event. Also replaces the game's event-selection logic with a weighted-random picker that respects your configured weights. Automatically defers to the multiplayer mod's event scheduling when running as a coop client.

**Key Settings**
- `General.DumpData` (default `true`) — dump event/item/terraform data to files for reference
- `Options.LaunchCheckInterval` (default `20`) — seconds between launch checks
- `Options.LaunchChancePerCheck` (default `2`) — % chance to launch an event per check
- `Options.SpawnedResourcesDestroyMultiplier` (default `8`) — how much slower asteroid-spawned resources despawn vs. normal debris

---

### Delete
**Instantly deletes/deconstructs whatever you're aiming at.**

Raycasts from your aim point and deconstructs or destroys the targeted object in one keypress.

**Default Keybindings**
| Key | Action |
|---|---|
| `Delete` | Delete/deconstruct the object you're aiming at |

---

### DrillSound
**Customizes or mutes the multitool's drilling sound.**

Overrides the volume and pitch of the mining/drilling sound effect, or mutes it entirely.

**Key Settings**
- `Options.MuteSound` (default `false`)
- `Options.Volume` (default `0.25`) / `Options.Pitch` (default `0.5`)

---

### MobileCrafter
**Adds a portable crafting station item.**

Adds a craftable "Mobile Crafter" microchip; while it's equipped (or free-craft is enabled), press a key from anywhere to open a crafting UI as if standing at a physical crafting station — no build animation required.

**Default Keybindings**
| Key | Action |
|---|---|
| `P` | Open the Mobile Crafter UI (requires the item equipped, or free-craft enabled) |

**Key Settings**
- `Options.MobileCrafterType` (default Tier 1) — which crafting station tier the mobile crafter behaves as
- `Options.CraftAtStationType` (default Tier 3) — which station tier is required to craft the microchip itself

---

### ProgressionRate
**Globally scales terraforming/unlock progression speed.**

Multiplies every resource-unlock requirement and terraform-stage threshold by a configurable factor, letting you speed up or slow down overall game progression.

**Key Settings**
- `Options.RequirementMult` (default `1`) — multiplier applied to all unlock/terraform requirements

---

### QuickRotate
**Adds fast rotation increments while placing objects.**

While placing a construction, hold a modifier key to rotate it by a larger configured step instead of the default increment.

**Default Keybindings**
| Key | Action |
|---|---|
| `Left Shift` (held) | Rotate by `RotateOne` degrees per input (default `45°`) |
| `Left Ctrl` (held) | Rotate by `RotateTwo` degrees per input (default `90°`) |
| `Left Shift` + `Left Ctrl` (held) | Rotate by `RotateThree` degrees per input (default `180°`) |

---

### QuickStore
**One-key transfer of matching items into nearby containers.**

Instantly sorts matching items from your backpack into nearby chests/lockers, based on configurable matching rules (container already holds that item type, container name matches the item, etc.).

**Default Keybindings**
| Key | Action |
|---|---|
| `L` | Store matching items into nearby containers |

**Key Settings**
- `Options.Range` (default `20`) — search range in meters
- `Options.AllowStoreInChests` (default `true`) — allow storing in chests, not just lockers
- `Options.StoreIfAlreadyContains` / `Options.StoreIfContainerNameExact` / `Options.StoreIfContainerNameContains` — matching rules
- `Options.AllowList` / `Options.DisallowList` — comma-separated item IDs to restrict/exclude

---

### ResourceScan
**Highlights nearby minable resources with name labels, like a radar.**

Periodically scans a configurable range band around you and shows floating labels over minable resources. Aim at a resource and press a key to add/remove it from the filter list.

**Default Keybindings**
| Key | Action |
|---|---|
| `Page Up` | Toggle scanning on/off |
| `Page Down` | Add/remove the currently-aimed-at resource from the filter list |

**Key Settings**
- `Options.MinRange` (default `20`) / `Options.MaxRange` (default `100`) — scan range band in meters
- `Options.CheckInterval` (default `3`) — seconds between scans
- `Options.AllowList` / `Options.DisallowList` — comma-separated item IDs to restrict/exclude from scanning

---

### ShowNextUnlockableGoal
**Shows the next unlock threshold on the HUD gauges.**

Appends the value needed for the next unlock/terraform stage in parentheses next to each HUD gauge's current value (Heat, Oxygen, Pressure, Biomass, Terraformation).

**Key Settings**
- `Options.NextString` (default `"({0})"`) — format string used to display the next-unlock value

---

### SpawnObject
**Dev/cheat tool to spawn any item by ID.**

Opens a text-input window with autocomplete where you type an item ID and amount; the item is added to your inventory (hold Shift, if there's room), placed as a construction, or dropped in front of you as appropriate.

**Default Keybindings**
| Key | Action |
|---|---|
| `End` | Open/close the spawn window |

**Key Settings**
- `Options.DumpItems` (default `true`) — one-time dump of all item IDs/names to `items.txt` for reference

---

### SpreaderTweaks
**Tunes vegetation spreader machines.**

Multiplies the radius, planting interval, and amount-per-interval for Tree, Grass, and Seed/Flower spreaders independently.

**Key Settings**
- `TreeRadiusMult` / `TreeIntervalMult` / `TreeAmountMult` (defaults `1`)
- `GrassRadiusMult` / `GrassIntervalMult` / `GrassAmountMult` (defaults `1`)
- `FlowerRadiusMult` / `FlowerIntervalMult` / `FlowerAmountMult` (defaults `1`)

---

### StorageAnywhere
**Browse and use any nearby container's inventory from one window.**

Opens a container-style UI that lets you cycle through every nearby inventory in range via a dropdown, without walking up to each one individually.

**Default Keybindings**
| Key | Action |
|---|---|
| `I` | Open/close the nearby-inventory browser |
| `Left Arrow` | Switch to the previous nearby inventory |
| `Right Arrow` | Switch to the next nearby inventory |

**Key Settings**
- `Range` (default `20`) — search range in meters
- `IgnoreSingleCell` (default `true`) — skip single-slot inventories
- `IgnoreTypes` (default `"Golden"`) — comma-separated substrings of inventory type names to skip

---

### StorageCustomization
**Resizes storage containers and backpack capacity.**

Overrides the inventory size of chests, lockers, the golden container, and the water collector, and how many extra slots each backpack upgrade tier grants. Automatically rescales and adds scrolling to the inventory grid UI so larger inventories still fit on screen.

**Key Settings**
- `ChestStorageSize` (default `15`) / `LockerStorageSize` (default `35`) / `Locker2StorageSize` (default `35`) / `GoldenChestStorageSize` (default `30`) / `WaterCollectorStorageSize` (default `4`)
- `Backpack1Adds` … `Backpack7Adds` (defaults `4, 8, 12, 16, 23, 33, 42`) — extra slots granted per backpack tier
- `IconScale` (default `1`) — inventory icon scale

## Shared library

### AedenthornUtils
Not a standalone mod — a shared static helper class (`AedenthornUtils.csproj`) referenced by several of the mods above. Provides:
- Legacy-Input-System key-state helpers (`CheckKeyDown` / `CheckKeyUp` / `CheckKeyHeld`)
- `ShuffleList<T>` — in-place Fisher-Yates shuffle
- `GetAssetPath` — resolves (and optionally creates) a per-mod folder next to the plugin DLL, used for writing files like `items.txt`
- `GetTransformPath` — builds a readable hierarchy path for a Unity `Transform`, useful for debugging
