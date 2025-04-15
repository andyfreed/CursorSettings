# Cursor Settings Exporter
# This script exports your current Cursor settings to this project folder

# Create directories if they don't exist
$projectUserDir = ".\settings\user"
$projectDir = ".\settings"

if (!(Test-Path -Path $projectUserDir)) {
    New-Item -ItemType Directory -Path $projectUserDir -Force
    Write-Host "Created project User directory"
}

# Copy settings files
Write-Host "Exporting Cursor settings..."

# User settings - only if the file exists
if (Test-Path -Path "$env:APPDATA\Cursor\User\settings.json") {
    Copy-Item -Path "$env:APPDATA\Cursor\User\settings.json" -Destination "$projectUserDir\" -Force
    Write-Host "Exported settings.json"
} else {
    Write-Host "Warning: settings.json not found in Cursor installation"
}

# Keybindings - only if the file exists
if (Test-Path -Path "$env:APPDATA\Cursor\User\keybindings.json") {
    Copy-Item -Path "$env:APPDATA\Cursor\User\keybindings.json" -Destination "$projectUserDir\" -Force
    Write-Host "Exported keybindings.json"
} else {
    Write-Host "Warning: keybindings.json not found in Cursor installation"
}

# Preferences - only if the file exists
if (Test-Path -Path "$env:APPDATA\Cursor\Preferences") {
    Copy-Item -Path "$env:APPDATA\Cursor\Preferences" -Destination "$projectDir\" -Force
    Write-Host "Exported Preferences"
} else {
    Write-Host "Warning: Preferences file not found in Cursor installation"
}

Write-Host "Done! Cursor settings have been exported to the project folder."
Write-Host "Don't forget to commit and push your changes to GitHub." 