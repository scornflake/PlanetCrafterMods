$msbuild = "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\amd64\MSBuild.exe"
$projects = @("QuickStore", "CraftFromContainers", "ConstructToInventory")
$releaseDir = "$PSScriptRoot\Release"

# Build projects (SolutionDir required — TargetFramework comes from solution.targets)
foreach ($project in $projects) {
    Write-Host "Building $project..." -ForegroundColor Cyan
    & $msbuild "$PSScriptRoot\$project\$project.csproj" /restore /p:Configuration=Debug /p:SolutionDir="$PSScriptRoot\" /nologo /v:minimal
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Build failed for $project" -ForegroundColor Red
        exit 1
    }
}

Write-Host "All builds succeeded!" -ForegroundColor Green

# Create Release folder and copy DLLs
Write-Host "Creating release package..." -ForegroundColor Cyan
if (Test-Path $releaseDir) {
    Remove-Item $releaseDir -Recurse -Force
}
New-Item -ItemType Directory -Path $releaseDir | Out-Null

$dllsDir = "$releaseDir\dlls"
New-Item -ItemType Directory -Path $dllsDir | Out-Null

foreach ($project in $projects) {
    $dll = "$PSScriptRoot\$project\bin\Debug\net480\$project.dll"
    if (Test-Path $dll) {
        Copy-Item $dll $dllsDir
        Write-Host "  Copied $project.dll" -ForegroundColor Green
    }
}

# Create zip in Release folder
$zipPath = "$releaseDir\fixed-mods.zip"
Compress-Archive -Path $dllsDir -DestinationPath $zipPath
Write-Host "Created $zipPath" -ForegroundColor Green
