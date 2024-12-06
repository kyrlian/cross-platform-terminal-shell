# Wezterm

https://wezfurlong.org/wezterm/

## Install

### Macos 

```sh
brew install wezterm
```
	
### Windows

```sh
scoop install wezterm
```

**Optional**: Download and run [open_in_wezterm.reg](../assets/wezterm/open_in_wezterm.reg) to add wezterm to right click context menu.

## Config file location

`~/.wezterm.lua`

## Load custom config file

You can load a custom config with

```lua
dofile('<your custom config path>/wezterm_config.lua')
```

## Change color scheme

Open wezterm config, and add

```lua
-- Changing the color scheme:
config.color_scheme = 'catppuccin-mocha'
```

## Change default shell

Open wezterm config, and add

```lua
-- Set default shell
config.default_prog = { 'nu', '-l' }
```

**NOTE**: On macos with homebrew, use the full path `/opt/homebrew/bin/nu`

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

## Finder shortcut

To add an "Open with WezTerm" shortcut in Macos Finder > Quick Actions, double click on the Automator workflow [Open in WezTerm.workflow](../assets/WezTerm/Open%20in%WezTerm.workflow/)

## Explorer shortcut

To add an "Open with WezTerm" shortcut in Windows Explorer, double click on the registry file [open_in_wezterm.reg](../assets/WezTerm/open_in_wezterm.reg)

## Ressources

- [My wezterm config](../assets/wezterm/wezterm_config.lua)
- [wezterm doc - changing the default shell](https://wezfurlong.org/wezterm/config/launch.html#changing-the-default-program)
- [wezterm doc - colors chemes](https://wezfurlong.org/wezterm/colorschemes/index.html)
- [wezterm cheatsheet](https://ansidev.substack.com/p/wezterm-cheatsheet)
- [tmux like bindings](https://gist.github.com/quangIO/556fa4abca46faf40092282d0c11a367)
