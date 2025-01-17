# RIO terminal emulator

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

## Finder shortcut

To add an "Open with Ghostty" shortcut in Macos Finder > Quick Actions, double click on the Automator workflow [Open in ghostty.workflow](../assets/ghostty/)

Or manually create an automator workflow with a single step "Run Shell Script" and the following content:

```sh
open -a /Applications/Ghostty.app "$1"
```

> **Note**: Ghostty natively adds `New Ghostty Tab Here` and `New Ghostty Window Here` in `Services`

## Ressources
- [My ghostty config](../assets/ghostty/)
- [ghostty Doc](https://ghostty.org/docs)
