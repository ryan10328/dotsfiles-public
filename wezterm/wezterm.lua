local wezterm = require("wezterm")
local config = wezterm.config_builder()
local is_mac = require("utils.platform").is_mac
local is_win = require("utils.platform").is_win

config.initial_cols = 120
config.initial_rows = 30
config.font_size = 17.0
config.line_height = 1.2

config.font_shaper = 'Harfbuzz'
config.text_background_opacity = 1.0

if is_mac then
    config.window_background_opacity = 0.6
    config.macos_window_background_blur = 20
elseif is_win then
    config.window_background_opacity = 0.7
    config.win32_system_backdrop = "Acrylic"
    -- for text render
    config.freetype_load_target = 'Light';
    config.freetype_render_target = 'HorizontalLcd'
end

config.color_scheme = "Bamboo"
config.colors = {
    cursor_bg = "white",
    cursor_border = "white",
}
config.font = wezterm.font_with_fallback({
    { family = "CaskaydiaCove Nerd Font", weight = 'Medium' },
    { family = "Cascadia Code",           weight = 'Medium' },
})

config.window_decorations = "RESIZE"
config.enable_scroll_bar = false
config.front_end = "WebGpu"
config.prefer_egl = true

-- plugins
wezterm.plugin.require("https://github.com/yriveiro/wezterm-tabs").apply_to_config(config)

return config
