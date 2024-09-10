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
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<tab>", ":tabn<CR>") -- go to next tab
keymap.set("n", "<S-Tab>", ":tabp<CR>") -- go to next tab

-- vim-maximizer
-- keymap.set("n", "<leader>wm", ":MaximizerToggle<CR>") -- toogle maximize current window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Toggle file explorer
-- keymap.set("n", "<leader>e", ":Explore<CR>") -- Toggle file explorer

-- Move the selected text up or down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Search in the buffer

-- Search old files
-- keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })

-- Quick list navigator
keymap.set("n", "[q", ":cp<CR>")
keymap.set("n", "]q", ":cn<CR>")
