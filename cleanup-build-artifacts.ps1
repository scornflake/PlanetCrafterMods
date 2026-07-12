#Requires -Version 5.0
<#
.SYNOPSIS
    Clean up old mod DLLs from the Planet Crafter BepInEx plugins folder.

.DESCRIPTION
    This script removes all .dll files from the BepInEx plugins directory to clear out stale mod files
    before rebuilding and deploying fresh builds.

    Use this before running 'dotnet build' to ensure a clean slate in the game's plugins folder.

.EXAMPLE
    PS> .\cleanup-build-artifacts.ps1
    Removed: AutoCrafterTweaks.dll
    Removed: QuickStore.dll
    ...
    Cleanup complete. Removed 31 files.

.NOTES
    - This is destructive: it permanently deletes all DLLs from the plugins folder. No recovery is possible.
    - Only affects .dll files in F:\SteamLibrary\steamapps\common\The Planet Crafter\BepInEx\plugins
#>

$ErrorActionPreference = "Stop"
$pluginsPath = "F:\SteamLibrary\steamapps\common\The Planet Crafter\BepInEx\plugins"

if (-not (Test-Path $pluginsPath)) {
    Write-Host "Plugins folder not found: $pluginsPath" -ForegroundColor Red
    exit 1
}

Write-Host "Cleaning up mod DLLs in $pluginsPath" -ForegroundColor Cyan

$filesRemoved = 0

# Remove all .dll files except the ones we want to keep
$keepFiles = @("QuickStore.dll", "CraftFromContainers.dll", "CustomFlashlight.dll")

Get-ChildItem -Path $pluginsPath -File -Filter "*.dll" | ForEach-Object {
    if ($_.Name -notin $keepFiles) {
        try {
            Remove-Item -Path $_.FullName -Force -Confirm:$false
            Write-Host "Removed: $($_.Name)" -ForegroundColor Green
            $filesRemoved++
        } catch {
            Write-Host "Failed to remove $($_.Name): $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}

Write-Host ""
Write-Host "Cleanup complete. Removed $filesRemoved files." -ForegroundColor Cyan
