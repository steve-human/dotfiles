-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Initialize the configuration
local config = wezterm.config_builder()

-- Appearance settings
config.color_scheme = 'TokyoNight'
config.font = wezterm.font('FiraCode Nerd Font Mono')
config.font_size = 14.0

-- Window appearance and behavior
config.window_background_opacity = 0.8
config.window_decorations = "RESIZE"
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}
config.window_frame = {
  active_titlebar_bg = '#333333',
  inactive_titlebar_bg = '#333333',
}

-- Tab bar configuration
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- Window dimensions
config.initial_cols = 120
config.initial_rows = 30

-- Key bindings
config.keys = {
  {key="t", mods="CTRL|SHIFT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
  {key="w", mods="CTRL|SHIFT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
  {key="h", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Left"}},
  {key="l", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Right"}},
  {key="k", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Up"}},
  {key="j", mods="CTRL|SHIFT", action=wezterm.action{ActivatePaneDirection="Down"}},
}

-- Scrollback buffer
config.scrollback_lines = 5000

-- Return the final configuration
return config
