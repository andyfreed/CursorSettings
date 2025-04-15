# Cursor Settings

This repository contains my personal Cursor settings that can be easily installed across different computers.

## Contents

- `settings/user/settings.json` - Editor settings and preferences
- `settings/user/keybindings.json` - Custom keyboard shortcuts
- `settings/Preferences` - General Cursor preferences

## Installation

### Windows

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/CursorSettings.git
   cd CursorSettings
   ```

2. Run the PowerShell installation script:
   ```
   powershell -ExecutionPolicy Bypass -File install.ps1
   ```

3. Restart Cursor to apply the settings.

### Manual Installation

If you prefer to install manually, copy the files to these locations:

- Copy `settings/user/settings.json` to `%APPDATA%\Cursor\User\`
- Copy `settings/user/keybindings.json` to `%APPDATA%\Cursor\User\`
- Copy `settings/Preferences` to `%APPDATA%\Cursor\`

## Updating

When you want to update your settings across computers:

1. Make changes to Cursor on your main machine
2. Run the export script to save your current settings:
   ```
   powershell -ExecutionPolicy Bypass -File export.ps1
   ```
3. Commit and push changes
4. On other computers, pull the changes and run the install script

## What's Included

- Theme preferences (`Red` theme)
- Command center configuration
- Custom keybindings (e.g., `Ctrl+I` for Composer Mode)
- Spell check settings (US English)

## Scripts

- `install.ps1` - Installs settings from this repo to your local Cursor installation
- `export.ps1` - Exports your current Cursor settings to this repo

## Note

Some settings and extensions might be machine-specific, so this repository focuses on the core user experience settings.

## License

Feel free to use and modify these settings for your own use. 