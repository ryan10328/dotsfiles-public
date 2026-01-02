local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 30
config.font_size = 17.0
config.window_background_opacity = 0.9
config.color_scheme = "Bamboo"
config.font = wezterm.font_with_fallback({
	"CaskaydiaCove Nerd Font",
	"Cascadia Code PL",
})

return config
