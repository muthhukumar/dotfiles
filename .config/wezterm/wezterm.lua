local wezterm = require("wezterm")

local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- UI config --
config.color_scheme = "Dracula (Official)"

-- Font config start --
config.font = wezterm.font("SFMono Nerd Font", { weight = 600, italic = false })

config.font_size = 15
config.line_height = 1.4

config.keys = {
	{
		key = "n",
		mods = "SHIFT|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}

config.enable_tab_bar = false

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.animation_fps = 60
config.dpi = 120

return config
