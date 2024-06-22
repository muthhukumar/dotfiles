return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				section_separators = "",
				component_separators = "|",
				theme = "catppuccin-mocha",
			},
			sections = {
				-- left
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },

				-- right
				lualine_x = { "g:zoom#statustext", "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = { "quickfix", "fugitive", "fzf" },
		},
	},
}
