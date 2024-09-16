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
    action = act.SendString('cd $HOME/.config/wezterm\n'),
  },
  {
    key = 'v',
    mods = 'CTRL|ALT',
    action = act.SendString('cd $HOME/.config/nvim\n'),
  },
  {
    key = 'e',
    mods = 'CTRL|ALT',
    action = act.SendString('export GCM_CREDENTIAL_STORE=cache\n'),
  }

}
return config
