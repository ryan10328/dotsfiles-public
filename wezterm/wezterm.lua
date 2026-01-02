local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.initial_cols = 160
config.initial_rows = 35
config.font_size = 16.0
config.window_background_opacity = 0.9
config.color_scheme = "Bamboo"
config.font = wezterm.font_with_fallback({
	"CaskaydiaCove Nerd Font",
	"Cascadia Code PL",
})

return config
