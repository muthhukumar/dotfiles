require("muthu.init") -- Should be at the top
require("muthu.core.colorscheme")
require("muthu.core.keymaps")
require("muthu.core.options")

-- plugins
require("muthu.plugins.autopairs")
require("muthu.plugins.comment")
require("muthu.plugins.gitsigns")
-- require("muthu.plugins.harpoon")
require("muthu.plugins.lualine")
require("muthu.plugins.nvim-cmp")
require("muthu.plugins.nvim-tree")
require("muthu.plugins.telescope")
require("muthu.plugins.treesitter")

-- lsp
require("muthu.plugins.lsp.mason")
require("muthu.plugins.lsp.lspsaga")
require("muthu.plugins.lsp.lspconfig")
require("muthu.plugins.lsp.null-ls")
