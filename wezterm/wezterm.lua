-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {
	--	color_scheme = "Catppuccin Mocha",
	--	font = wezterm.font("Hack Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" }),
	--	font_size = 13.8,
}
-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
-- if wezterm.config_builder then
-- 	config = wezterm.config_builder()
-- end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("Hack Nerd Font", { weight = "Regular", stretch = "Normal", style = "Normal" })

config.font_size = 13.8

config.hide_tab_bar_if_only_one_tab = true

config.window_decorations = "RESIZE"

config.audible_bell = "Disabled"

config.check_for_updates = false

config.cursor_blink_ease_in = "Linear"

config.cursor_blink_ease_out = "Linear"

config.default_cursor_style = "BlinkingBar"

-- config.tab_max_width = 16

-- and finally, return the configuration to wezterm
return config
