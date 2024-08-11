-- local plugin_specs = {
-- 	{ "EdenEast/nightfox.nvim" },
-- 	{ "rose-pine/neovim", name = "rose-pine" },
-- 	{ "folke/tokyonight.nvim", branch = "main" },
-- 	{ "sainnhe/everforest" },
-- 	{ "sainnhe/edge" },
-- 	{ "ellisonleao/gruvbox.nvim" },
-- 	{ "rebelot/kanagawa.nvim" },
-- 	{
-- 		"catppuccin/nvim",
-- 		name = "catppuccin",
-- 		opt = {
-- 			transparent_background = true,
-- 		},
-- 	},
-- }
--
-- return plugin_specs
return {
	"catppuccin/nvim",
	lazy = false,
	opts = {
		transparent_background = true,
	},
}
