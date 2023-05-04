-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs & Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true -- ??
vim.opt.softtabstop = 2 -- ??

-- eof
vim.opt.fillchars = "eob:."

-- Line wrapping
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true
-- When 'ignorecase' and 'smartcase' are both on, if a pattern contains an uppercase letter, it is case sensitive, otherwise, it is not.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Cursorline settings
vim.opt.cursorline = true -- highlight the current line

-- Apperance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.background = "dark"

-- Backspace
vim.opt.backspace = "indent,eol,start"

-- Clipboard
-- vim.opt.clipboard:append("unnamedplus")

-- Split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scroll settings
vim.opt.scrolloff = 8 -- minimal number of screen lines to keep above and below the cursor.
vim.opt.sidescrolloff = 8 -- minimal number of screen lines to keep left and right of the cursor.

vim.opt.fileencoding = "utf-8"

-- vim.opt.isfname:append("@-@") -- ??
vim.opt.updatetime = 50 -- ??
