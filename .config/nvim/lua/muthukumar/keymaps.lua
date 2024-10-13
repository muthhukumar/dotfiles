local keymap = vim.keymap

-- General keymaps
keymap.set("i", "jj", "<ESC>")

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
keymap.set("n", "<leader>tn", ":tabnext<CR>") -- open new tab
keymap.set("n", "<leader>tp", ":tabprev<CR>") -- open new tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggle file explorer

-- Move the selected text up or down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Open the current file in new tab
vim.api.nvim_set_keymap(
	"n",
	"<leader>wm",
	":let pos = getpos('.') | tabedit % | call setpos('.', pos)<CR>",
	{ noremap = true, silent = true }
)

-- quick list
vim.api.nvim_set_keymap("n", "]q", ":cnext<CR>", { noremap = true, silent = true }) -- next item
vim.api.nvim_set_keymap("n", "[q", ":cprev<CR>", { noremap = true, silent = true }) -- prev item
vim.api.nvim_set_keymap("n", "<leader>qo", ":copen<CR>", { noremap = true, silent = true }) -- open
vim.api.nvim_set_keymap("n", "<leader>qc", ":cclose<CR>", { noremap = true, silent = true }) -- close
