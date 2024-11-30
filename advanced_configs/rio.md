# RIO terminal emulator

https://raphamorim.io/rio/

## Install

### Macos 

```sh
brew install rio
```
	
### Windows

```sh
scoop install rio
```

## Config file location

Open the config file with `Ctrl + Shift + ,` (comma)

- Linux/Macos: `~/.config/rio/config.toml`
- Windows: `~\AppData\Local\rio`

## Change default shell

```toml
[shell]
program = "nu"
args = []
```

## Change theme

- Get a theme file [here](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/rio)
- Create a `themes` folder in the config file location and put your theme file there.
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

```toml
[renderer]
performance = "high"
backend = "automatic"
disable-unfocused-render = false
level = 1
filters = ["C:/Users/key/AppData/Local/rio/shaders/crt-hyllian.slangp"]
```

## Ressources
- [My RIO config](../assets/rio/config.toml)
- [Rio bindings actions](https://raphamorim.io/rio/docs/config/bindings/#action)
- [Rio theming](https://raphamorim.io/rio/docs/config/theme)
- [Theme files](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/rio)
- [Shader files](https://github.com/libretro/slang-shaders)