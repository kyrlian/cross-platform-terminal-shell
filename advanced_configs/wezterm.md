# Wezterm config

## Install

### Macos 

```sh
brew install wezterm
```
	
### Windows

```sh
scoop install wezterm
```

## Config file location

`~/.wezterm.lua`

## Load custom config file

You can load a custom config with

```lua
dofile('<your custom config path>/wezterm_config.lua')
```

## Change default shell

Open wezterm config, and add

```lua
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Changing the color scheme:
config.color_scheme = 'catppuccin-mocha'

-- Set default shell
config.default_prog = { 'nu', '-l' }

-- and finally, return the configuration to wezterm
return config
```

## Custom shortcuts

```lua
config.leader = { key = "w", mods = "CTRL" }
config.keys = {
    -- pane split
    { key = "%",          mods = "LEADER",      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "-",          mods = "LEADER",      action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "LEADER",      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "LEADER|CTRL", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    -- pane zoom and close
    { key = "Space",      mods = "LEADER",      action = wezterm.action.TogglePaneZoomState },
    { key = "x",          mods = "LEADER",      action = wezterm.action.CloseCurrentPane { confirm = true } },
    -- pane focus
    { key = "LeftArrow",  mods = "LEADER",      action = wezterm.action.ActivatePaneDirection "Left" },
    { key = "DownArrow",  mods = "LEADER",      action = wezterm.action.ActivatePaneDirection "Down" },
    { key = "UpArrow",    mods = "LEADER",      action = wezterm.action.ActivatePaneDirection "Up" },
    { key = "RightArrow", mods = "LEADER",      action = wezterm.action.ActivatePaneDirection "Right" },
    -- pane adjust size
    { key = "LeftArrow",  mods = "LEADER|CTRL", action = wezterm.action.AdjustPaneSize { "Left", 5 } },
    { key = "DownArrow",  mods = "LEADER|CTRL", action = wezterm.action.AdjustPaneSize { "Down", 5 } },
    { key = "UpArrow",    mods = "LEADER|CTRL", action = wezterm.action.AdjustPaneSize { "Up", 5 } },
    { key = "RightArrow", mods = "LEADER|CTRL", action = wezterm.action.AdjustPaneSize { "Right", 5 } },
    -- spawn tab and windows
    { key = 't',          mods = 'LEADER',      action = wezterm.action.SpawnTab "CurrentPaneDomain" },
    { key = 'w',          mods = 'LEADER',      action = wezterm.action.SpawnWindow },
}
```

## Ressources

- [My wezterm config](../assets/wezterm/wezterm_config.lua)
- [wezterm doc - changing the default shell](https://wezfurlong.org/wezterm/config/launch.html#changing-the-default-program)
- [wezterm doc - colors chemes](https://wezfurlong.org/wezterm/colorschemes/index.html)
- [wezterm cheatsheet](https://ansidev.substack.com/p/wezterm-cheatsheet)
- [tmux like bindings](https://gist.github.com/quangIO/556fa4abca46faf40092282d0c11a367)
