# Ghostty terminal emulator

https://ghostty.org

## Install

### Macos

```sh
brew install ghostty
```

## Config file location

- All platforms: `~/.config/ghostty/config`
- Default on macos: `$HOME/Library/Application\ Support/com.mitchellh.ghostty/config`

You can open the config file from ghostty with the shortcut:
- Macos: `Command + ,` (comma)

[Doc - config file location](https://ghostty.org/docs/config#file-location)


## Quick console

Ghostty supports the "quake console", add this to the config:

```
keybind = global:cmd+escape=toggle_quick_terminal
```

## Change shell
```
command = /opt/homebrew/bin/fish
```
## Change theme

Browse themes with the command
```sh
ghostty +list-themes
```

Then add your prefered theme to your config file with:
```
theme = MaterialDarker
```


## Finder shortcut

To add an "Open with Ghostty" shortcut in Macos Finder > Quick Actions, double click on the Automator workflow [Open in ghostty.workflow](../assets/ghostty/)

Or manually create an automator workflow with a single step "Run Shell Script" and the following content:

```sh
open -a /Applications/Ghostty.app "$1"
```

> **Note**: Ghostty natively adds `New Ghostty Tab Here` and `New Ghostty Window Here` in `Services`

## Ressources
- [My Ghostty config](../assets/ghostty/)
- [Ghostty Doc](https://ghostty.org/docs)
