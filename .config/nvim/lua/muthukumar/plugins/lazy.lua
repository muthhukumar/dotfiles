return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "christoomey/vim-tmux-navigator" },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup{}
    end
  },
  { "lewis6991/gitsigns.nvim", opts = {} },

  -- Lsp progress message
  {
    "j-hui/fidget.nvim",
    opts = {
      -- options
    },
  },

  -- TODO - this is not working.
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("todo-comments").setup {}
    end
  },

  'onsails/lspkind.nvim',

  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      'j-hui/fidget.nvim',
    }
  },

  { -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },


}

-- trouble
-- make lua line simple
-- harpoon
-- lsp
-- neo git
-- file tree
-- diagnostic with telescope
-- zen mode maybe
-- valentjn/ltex-ls
-- there are more telescope search features and shortcuts checkout that also
-- TODO with telescope
--  "tpope/vim-surround",
--  https://github.com/numToStr/FTerm.nvim - maybe try check this out later
--  rmagatti/goto-preview
