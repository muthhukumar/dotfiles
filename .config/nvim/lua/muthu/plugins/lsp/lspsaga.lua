-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	symbol_in_winbar = {
		enable = false,
	},
	-- keybinds for navigation in lspsaga window
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
	ui = {
		colors = {
			normal_bg = "#022746",
		},
	},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<cr>", opts)
