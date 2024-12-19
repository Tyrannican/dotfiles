local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'carbonfox'
config.font_size = 14.0
config.window_decorations = 'NONE'
config.front_end = "WebGpu"
config.webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[3]

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
