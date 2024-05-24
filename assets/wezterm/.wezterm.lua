-- Location: ~/.wezterm.lua

local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Changing the color scheme:
config.color_scheme = 'catppuccin-mocha'
-- config.color_scheme = 'dracula'

-- hide_tab_bar_if_only_one_tab
config.hide_tab_bar_if_only_one_tab = true

-- Set default shell
-- Windows
-- config.default_prog = { 'nu', '-l' }
-- MacOS homebrew
config.default_prog = { '/opt/homebrew/bin/nu', '-l' }

-- Set tmux like bindings
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
    { key = 'n',          mods = 'LEADER',      action = wezterm.action.SpawnWindow },
}

-- Return the configuration to wezterm
return config
