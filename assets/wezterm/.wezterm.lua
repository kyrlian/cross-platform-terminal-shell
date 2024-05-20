
-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Changing the color scheme:
config.color_scheme = 'AdventureTime'

-- Set default shell
-- https://wezfurlong.org/wezterm/config/launch.html#changing-the-default-program
config.default_prog = { 'nu', '-l' }

-- and finally, return the configuration to wezterm
return config

