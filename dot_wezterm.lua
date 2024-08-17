-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

config.foreground_text_hsb = {
  hue = 1.0,
  saturation = 1.0,
  brightness = 1.5,
}

-- and finally, return the configuration to wezterm
return config

