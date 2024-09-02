-- Custom wezterm config
-- kyrlian - 20240525
-- https://wezfurlong.org/wezterm/

-- loaded from  ~/.wezterm.lua
--- win
-- dofile('E:/xxxxx/assets/wezterm/wezterm_config.lua')
--- mac
-- dofile('/Users/me/Documents/xxxx/assets/wezterm/wezterm_config.lua')

local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.automatically_reload_config = true

---------------
-- Utils     --
---------------
-- https://wezfurlong.org/wezterm/config/lua/wezterm/target_triple.html
local is_os = function(os) -- linux, darwin, windows
    return wezterm.target_triple:find(os) ~= nil
end

--- from https://alexplescan.com/posts/2024/08/10/wezterm/
local function is_dark()
    -- wezterm.gui is not always available, depending on what
    -- environment wezterm is operating in. Just return true
    -- if it's not defined.
    if wezterm.gui then
        -- Some systems report appearance like "Dark High Contrast"
        -- so let's just look for the string "Dark" and if we find
        -- it assume appearance is dark.
        return wezterm.gui.get_appearance():find("Dark")
    end
    return true
end
  
---------------
-- Settings  --
---------------

-- Changing the color scheme:
--- https://wezfurlong.org/wezterm/colorschemes/index.html
if is_dark() then
    config.color_scheme = 'Dark Pastel'
    -- config.color_scheme = 'Catppuccin Mocha'
else
    -- config.color_scheme = 'Tokyo Night Day'
    config.color_scheme = 'Dark Pastel'
end

-- Font - list fonts with `wezterm ls-fonts --list-system`
config.font = wezterm.font({ family = 'IBM Plex Mono' })
-- Font size
config.font_size = 14.0

-- styling
--- blurred background
config.window_background_opacity = 0.9
config.macos_window_background_blur = 30
--- no border, integrated buttons
config.window_decorations = 'RESIZE|INTEGRATED_BUTTONS'
--- keep the tab bar to have space for the buttons
config.hide_tab_bar_if_only_one_tab = false -- true
config.window_frame = {
    font = wezterm.font({ family = 'IBM Plex Mono', weight = 'Bold' }),
    font_size = 12,
  }

-----------------------
-- Set default shell --
-----------------------

--- https://wezfurlong.org/wezterm/config/lua/config/default_prog.html
if is_os("darwin") then
    -- MacOS homebrew
    -- config.default_prog = { '/opt/homebrew/bin/zsh' } -- zsh shell
    config.default_prog = { '/opt/homebrew/bin/fish', '-l' }     -- fish shell
    -- config.default_prog = { '/opt/homebrew/bin/nu', '-l' } -- nu shell
    -- config.default_prog = { '/opt/homebrew/bin/murex' } -- murex shell
    -- config.default_prog = { '/opt/homebrew/bin/xonsh', '-l' } -- xonsh shell
elseif is_os("windows") then
    -- Windows
    config.default_prog = { 'nu', '-l' } -- nu shell
    -- config.default_prog = { 'C:/Program Files/murex/murex-6-windows-amd64.exe' } -- murex for windows
    -- config.default_prog = { 'wsl' } -- Default wsl with default shell
    -- config.default_prog = { 'wsl', '-d', 'Debian' } -- wsl Debian with default shell
    -- config.default_prog = { 'wsl', '-d', 'Ubuntu' } -- wsl Ubuntu with default shell
    -- config.default_prog = { 'wsl', '-d', 'Ubuntu', '-e', '/usr/bin/zsh', '-l' } -- wsl Ubuntu with zsh shell
    -- config.default_prog = { 'wsl', '-d', 'Ubuntu', '-e', '/usr/bin/fish', '-l' } -- wsl Ubuntu with fish shell
    -- config.default_prog = { 'wsl', '-d', 'Ubuntu', '-e', '/usr/bin/murex' } -- wsl Ubuntu with murex shell
    -- config.default_prog = { 'wsl', '-d', 'Ubuntu', '-e', '/usr/bin/xonsh', '-l' } -- wsl Ubuntu with xonsh shell
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
-- modifiers - https://wezfurlong.org/wezterm/config/keys.html#configuring-key-assignments
config.keys = {
    -- pane split
    { key = "%",          mods = "LEADER",         action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "-",          mods = "LEADER",         action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "LEADER",         action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "LEADER|CTRL",    action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "CTRL|ALT",       action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" } },
    { key = "s",          mods = "CTRL|ALT|SHIFT", action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" } },
    -- pane zoom and close
    { key = "Space",      mods = "LEADER",         action = wezterm.action.TogglePaneZoomState },
    { key = "w",          mods = "LEADER",         action = wezterm.action.CloseCurrentPane { confirm = true } },
    { key = "f",          mods = "LEADER",         action = wezterm.action.ToggleFullScreen },
    -- pane focus
    { key = "LeftArrow",  mods = "LEADER",         action = wezterm.action.ActivatePaneDirection "Left" },
    { key = "DownArrow",  mods = "LEADER",         action = wezterm.action.ActivatePaneDirection "Down" },
    { key = "UpArrow",    mods = "LEADER",         action = wezterm.action.ActivatePaneDirection "Up" },
    { key = "RightArrow", mods = "LEADER",         action = wezterm.action.ActivatePaneDirection "Right" },
    -- pane adjust size
    { key = "LeftArrow",  mods = "LEADER|CTRL",    action = wezterm.action.AdjustPaneSize { "Left", 5 } },
    { key = "DownArrow",  mods = "LEADER|CTRL",    action = wezterm.action.AdjustPaneSize { "Down", 5 } },
    { key = "UpArrow",    mods = "LEADER|CTRL",    action = wezterm.action.AdjustPaneSize { "Up", 5 } },
    { key = "RightArrow", mods = "LEADER|CTRL",    action = wezterm.action.AdjustPaneSize { "Right", 5 } },
    -- spawn tab and windows
    { key = 't',          mods = 'LEADER',         action = wezterm.action.SpawnTab "CurrentPaneDomain" },
    { key = 'n',          mods = 'LEADER',         action = wezterm.action.SpawnWindow },
    { key = 't',          mods = 'LEADER|CTRL',    action = wezterm.action.ShowTabNavigator },
    -- reload config -- not needed if config.automatically_reload_config = true (the default)
    -- Is also already mapped to cmd + R on mac
    -- https://wezfurlong.org/wezterm/config/lua/keyassignment/ReloadConfiguration.html
    -- https://wezfurlong.org/wezterm/config/lua/config/automatically_reload_config.html
    { key = 'r',          mods = 'LEADER',         action = wezterm.action.ReloadConfiguration },
}


-----------------------
-- Windows header    --
-----------------------
--- from https://alexplescan.com/posts/2024/08/10/wezterm/
local function segments_for_right_status(window)
    return {
      window:active_workspace(),
      wezterm.strftime('%a %b %-d %H:%M'),
      wezterm.hostname(),
    }
  end
  
  wezterm.on('update-status', function(window, _)
    local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
    local segments = segments_for_right_status(window)
  
    local color_scheme = window:effective_config().resolved_palette
    -- Note the use of wezterm.color.parse here, this returns
    -- a Color object, which comes with functionality for lightening
    -- or darkening the colour (amongst other things).
    local bg = wezterm.color.parse(color_scheme.background)
    local fg = color_scheme.foreground
  
    -- Each powerline segment is going to be coloured progressively
    -- darker/lighter depending on whether we're on a dark/light colour
    -- scheme. Let's establish the "from" and "to" bounds of our gradient.
    local gradient_to, gradient_from = bg
    if is_dark() then
      gradient_from = gradient_to:lighten(0.2)
    else
      gradient_from = gradient_to:darken(0.2)
    end
  
    -- Yes, WezTerm supports creating gradients, because why not?! Although
    -- they'd usually be used for setting high fidelity gradients on your terminal's
    -- background, we'll use them here to give us a sample of the powerline segment
    -- colours we need.
    local gradient = wezterm.color.gradient(
      {
        orientation = 'Horizontal',
        colors = { gradient_from, gradient_to },
      },
      #segments -- only gives us as many colours as we have segments.
    )
  
    -- We'll build up the elements to send to wezterm.format in this table.
    local elements = {}
  
    for i, seg in ipairs(segments) do
      local is_first = i == 1
  
      if is_first then
        table.insert(elements, { Background = { Color = 'none' } })
      end
      table.insert(elements, { Foreground = { Color = gradient[i] } })
      table.insert(elements, { Text = SOLID_LEFT_ARROW })
  
      table.insert(elements, { Foreground = { Color = fg } })
      table.insert(elements, { Background = { Color = gradient[i] } })
      table.insert(elements, { Text = ' ' .. seg .. ' ' })
    end
  
    window:set_right_status(wezterm.format(elements))
  end)


-- Return the configuration to wezterm
return config
