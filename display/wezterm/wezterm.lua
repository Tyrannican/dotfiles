local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'carbonfox'
config.font_size = 16.0
config.window_decorations = 'NONE'
config.keys = {
  {
    key = 'RightArrow',
    mods = 'SHIFT',
    action = wezterm.action { ActivateTabRelative = 1 }
  },
  {
    key = 'LeftArrow',
    mods = 'SHIFT',
    action = wezterm.action { ActivateTabRelative = -1 }
  },
  {
    key = 'R',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ReloadConfiguration
  }
}

return config
