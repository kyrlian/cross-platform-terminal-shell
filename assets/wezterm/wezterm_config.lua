-- Custom wezterm config
-- kyrlian - 20240525

-- loaded from  ~/.wezterm.lua
-- with
-- dofile('E:/docs/coding/shell/cross-platform-terminal-shell/assets/wezterm/wezterm_config.lua')

-- https://wezfurlong.org/wezterm/

local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- utils
-- https://wezfurlong.org/wezterm/config/lua/wezterm/target_triple.html
local is_os = function(os) -- linux, darwin, windows
    return wezterm.target_triple:find(os) ~= nil
end

---------------
-- Settings  --
---------------

-- Changing the color scheme:
--- https://wezfurlong.org/wezterm/colorschemes/index.html
config.color_scheme = 'catppuccin-mocha'
-- config.color_scheme = 'dracula'

-- hide_tab_bar_if_only_one_tab
config.hide_tab_bar_if_only_one_tab = true

-----------------------
-- Set default shell --
-----------------------

--- https://wezfurlong.org/wezterm/config/lua/config/default_prog.html
if is_os("darwin") then
    -- MacOS homebrew
    config.default_prog = { '/opt/homebrew/bin/nu', '-l' } -- nu shell
    -- config.default_prog = { '/opt/homebrew/bin/murex' } -- murex
elseif is_os("windows") then
    -- Windows
    config.default_prog = { 'nu', '-l' } -- nu shell
    -- config.default_prog = { 'C:/Program Files/murex/murex-6-windows-amd64.exe' } -- murex for windows
    -- config.default_prog = { 'wsl', '-d', 'Debian' } -- murex via wsl Debian
    -- config.default_prog = { 'wsl', '-d', 'Ubuntu' } -- murex via wsl Ubuntu
    -- config.default_prog = { 'wsl' } -- murex via wsl Ubuntu
end

-----------------------
-- Key bindings      --
-----------------------

-- Set tmux like bindings
--- https://wezfurlong.org/wezterm/config/keys.html
--- https://gist.github.com/quangIO/556fa4abca46faf40092282d0c11a367

-- leader key - https://wezfurlong.org/wezterm/config/keys.html#leader-key
config.leader = { key = "w", mods = "CTRL" }
-- key assigments - https://wezfurlong.org/wezterm/config/lua/keyassignment/index.html
config.keys = {
    -- pane split
    { key = "%",          mods = "LEADER",      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "-",          mods = "LEADER",      action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "LEADER",      action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "LEADER|CTRL", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    -- pane zoom and close
    { key = "Space",      mods = "LEADER",      action = wezterm.action.TogglePaneZoomState },
    { key = "x",          mods = "LEADER",      action = wezterm.action.CloseCurrentPane { confirm = true } },
    { key = "f",          mods = "LEADER",      action = wezterm.action.ToggleFullScreen },
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
