-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.

config.font = wezterm.font_with_fallback({
	{ family = "Iosevka Nerd Font" },
	{ family = "JoyPixels" },
})
config.font_size = 12

--apariencia de barra de titulo y bordes de ventana
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

-- fondo de pantalla
-- config.window_background_image = "/home/leonardo/.config/wezterm/assets/black-blur-background.jpg"
config.window_background_opacity = 0.98

--ajuste del padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

--eleccion de tema de color
config.color_scheme = "Andromeda"

-- Finally, return the configuration to wezterm:
return config
