local wezterm = require 'wezterm'
local config = {}
local act = wezterm.action

if wezterm.config_builder then config = wezterm.config_builder() end

-- These are the visual settings 
config.color_scheme = 'WildCherry'

-- Keybindings
config.keys = {
  {
    key = 'w',
    mods = 'CTRL|ALT',
    action = act.SendString('cd .config/wezterm\n'),
  },
  {
    key = 'v',
    mods = 'CTRL|ALT',
    action = act.SendString('cd .config/nvim\n'),
  }

}
return config
