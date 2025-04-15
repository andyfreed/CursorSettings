# Cursor Settings Installer
# This script copies saved settings to the Cursor installation

# Create directories if they don't exist
$cursorUserDir = "$env:APPDATA\Cursor\User"
$cursorDir = "$env:APPDATA\Cursor"

if (!(Test-Path -Path $cursorUserDir)) {
    New-Item -ItemType Directory -Path $cursorUserDir -Force
    Write-Host "Created Cursor User directory"
}

# Copy settings files
Write-Host "Installing Cursor settings..."

# User settings
Copy-Item -Path ".\settings\user\settings.json" -Destination "$cursorUserDir\" -Force
Write-Host "Installed settings.json"

# Keybindings
Copy-Item -Path ".\settings\user\keybindings.json" -Destination "$cursorUserDir\" -Force
Write-Host "Installed keybindings.json"

# Preferences
Copy-Item -Path ".\settings\Preferences" -Destination "$cursorDir\" -Force
Write-Host "Installed Preferences"

Write-Host "Done! Cursor settings have been installed."
Write-Host "Please restart Cursor to apply the changes." 