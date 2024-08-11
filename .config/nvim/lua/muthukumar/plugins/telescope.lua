local opts = { noremap = true }
local opts_desc = function(desc)
	return {
		noremap = true,
		desc = desc,
	}
end

local keymap = vim.api.nvim_set_keymap

return {
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		dependencies = {
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-lua/plenary.nvim" },
		},
		init = function()
			keymap("n", "<leader>pf", "<cmd>Telescope find_files hidden=true<cr>", opts)
			keymap("n", "<leader>pg", "<cmd>Telescope git_files<cr>", opts)
			keymap("n", "<leader>ps", "<cmd>Telescope live_grep<cr>", opts)
			keymap("n", "<leader>pb", "<cmd>Telescope buffers<cr>", opts)
			keymap("n", "<leader>pd", "<cmd>Telescope diagnostics<cr>", opts)
			keymap("n", "<leader>pS", "<cmd>Telescope git_status<cr>", opts)
			-- TODO check this later. After integrating the harpoon
			keymap("n", "<leader>pm", ":Telescope harpoon marks<CR>", opts)
			keymap("n", "<leader>pt", ":TodoTelescope<CR>", opts)
			-- TODO - for more commands check here - https://github.com/milanglacier/nvim/blob/master/lua/plugins/telescope.lua
			--

			vim.keymap.set("n", "st", ":TodoTelescope<CR>", { noremap = true })
			vim.keymap.set("n", "<leader>/", function()
				-- You can pass additional configuration to telescope to change theme, layout, etc.
				require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = true,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })
		end,
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<C-k>"] = actions.move_selection_previous,
							["<C-j>"] = actions.move_selection_next,
							-- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						},
					},
				},
			})

			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>pws", function()
				local word = vim.fn.expand("<cword>")
				builtin.grep_string({ search = word })
			end)

			-- vim.keymap.set("n", "<leader>ps", function()
			-- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
			-- end)
			require("telescope").load_extension("fzf")
			-- require('telescope').load_extension 'notify'
			require("telescope").load_extension("ui-select")
		end,
	},
}
