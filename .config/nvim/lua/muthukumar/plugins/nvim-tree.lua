-- TODO - I think this disables netwr
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		requires = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				git = {
					enable = false,
				},

				view = {
					side = "right",
					width = 45,
				},
				filters = {
					dotfiles = false,
				},

				actions = {
					open_file = {
						window_picker = {
							enable = false,
						},
					},
				},
			})
		end,
	},
}
