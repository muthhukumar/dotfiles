local wezterm = require("wezterm")

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- UI config --
config.color_scheme = "tokyonight_night"

-- Font config start --
-- config.font = wezterm.font("CaskaydiaCove Nerd Font", { weight = 500, italic = false })
config.font = wezterm.font("SFMono Nerd Font", { weight = 600, italic = false })

config.font_size = 8
config.line_height = 1.4

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

-- Disable the tab bar.
config.enable_tab_bar = false

-- Disable top window bar
config.window_decorations = "RESIZE"

-- Adding little bit of custom padding
config.window_padding = {
	left = 5,
	right = 5,
	top = 5,
	bottom = 5,
}

config.animation_fps = 60
-- config.dpi = 120

-- Add background blur
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10

return config
