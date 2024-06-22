return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "christoomey/vim-tmux-navigator" },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{ "lewis6991/gitsigns.nvim", opts = {} },

	-- Lsp progress message
	{ "j-hui/fidget.nvim", opts = {} },

	-- TODO: - this is not working.
	"onsails/lspkind.nvim",

	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup()
		end,
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
	},
}

-- neo git
-- zen mode maybe
-- valentjn/ltex-ls
-- there are more telescope search features and shortcuts checkout that also
-- TODO: with telescope
--  "tpope/vim-surround",
--  https://github.com/numToStr/FTerm.nvim - maybe try check this out later
-- rmagatti/goto-preview
