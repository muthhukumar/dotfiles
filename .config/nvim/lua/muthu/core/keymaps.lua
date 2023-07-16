vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>") -- Clear the result of hl search

-- These two remaps increment and decrement number in normal mode
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Window split
keymap.set("n", "<leader>wv", "<C-w>v") -- split window veritically
keymap.set("n", "<leader>wh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>wx", ":close<CR>") -- close current split window

-- Window resize
keymap.set("n", "<C-w>>", ":vertical resize +5<CR>")
keymap.set("n", "<C-w><", ":vertical resize -5<CR>")
keymap.set("n", "<C-w>+", ":horizontal resize +5<CR>")
keymap.set("n", "<C-w>_", ":horizontal resize -5<CR>")

-- Manage tab
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- Plugins remaps

-- vim-maximizer
keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>") -- toogle maximize current window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggle file explorer

-- telescope
local default_opts = { noremap = true }
keymap.set(
	"n",
	"<leader>pf",
	"<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
	default_opts
) -- Find files
keymap.set("n", "<leader>pg", "<cmd>Telescope git_files<cr>") -- Find in git files
keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>") -- Live search word in project
keymap.set("n", "<leader>pc", "<cmd>Telescope grep_string<cr>") -- Search current word in project
keymap.set("n", "<leader>pb", "<cmd>Telescope buffers<cr>") -- Buffer search
keymap.set("n", "<leader>ph", "<cmd>Telescope help_tags<cr>") -- Help tag search

-- Move the selected text up or down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Search in the buffer
keymap.set("n", "<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

-- vim.api.nvim_set_keymap("n", "<space>e", ":Telescope file_browser <CR> jj", { noremap = true })
