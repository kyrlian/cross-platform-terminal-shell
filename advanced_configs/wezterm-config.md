# Wezterm config

## Config file location

`~/.wezterm.lua`

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

## Ressources

- [My config](../assets/wezterm/.wezterm.lua)
- [wezterm doc - changing the default shell](https://wezfurlong.org/wezterm/config/launch.html#changing-the-default-program)
- [wezterm doc - colors chemes](https://wezfurlong.org/wezterm/colorschemes/index.html)
- [wezterm cheatsheet](https://ansidev.substack.com/p/wezterm-cheatsheet)
- [tmux like bindings](https://gist.github.com/quangIO/556fa4abca46faf40092282d0c11a367)
