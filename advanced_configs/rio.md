# RIO terminal emulator

https://raphamorim.io/rio/

## Install

### Macos

```sh
brew install rio --cask
```

### Windows

```sh
scoop install rio
```

## Config file location

- Linux/Macos: `~/.config/rio/config.toml`
- Windows: `~\AppData\Local\rio`

You can open the config file from rio with the shortcut:
- Macos: `Command + ,` (comma)
- Win: `Ctrl + Shift + ,` (comma)

## Change default shell

```toml
[shell]
program = "nu"
args = []
```

## Change theme

- Get a theme file [here](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/rio)
- Create a `themes` folder in the config file location and put your theme file there.

```sh
cd ~/.config/rio/
mkdir themes
```

- Change the `theme` value in the config file to your theme name (without extension)

```toml
theme = "elementary"
```

## Custom shortcuts

```toml
[bindings]
keys = [
   { key = "s", with = "control", action = "SplitRight" },
   { key = "s", with = "control | shift", action = "SplitDown" },
]
```

## Rendering filters

Shaders are composed of multiple files, so it's simpler to get all the shaders first
```sh
cd ~/.config/rio/
git clone https://github.com/libretro/slang-shaders.git
```

Then choose your prefered filter in the configuration:
```toml
[renderer]
performance = "high"
backend = "automatic"
disable-unfocused-render = false
level = 1
filters = ["C:\\Users\\key\\AppData\\Local\\rio\\slang-shaders\\crt\\crt-gdv-mini-ultra-trinitron.slangp"]
```

## Finder shortcut

To add an "Open with Rio" shortcut in Macos Finder > Quick Actions, double click on the Automator workflow [Open in RIO.workflow](../assets/rio/Open%20in%20RIO.workflow/)

Or manually create an automator workflow with a single step "Run Shell Script" and the following content:
```sh
open -a /Applications/Rio.app --args --working-dir "$1"
```

## Explorer shortcut

To add an "Open with Rio" shortcut in Windows Explorer, double click on the registry file [open_in_rio.reg](../assets/rio/open_in_rio.reg)

## Ressources
- [My RIO configs (mac & linux)](../assets/rio/)
- [Rio bindings actions](https://raphamorim.io/rio/docs/config/bindings/#action)
- [Rio theming](https://raphamorim.io/rio/docs/config/theme)
- [Theme files](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/rio)
- [Shader files](https://github.com/libretro/slang-shaders)
