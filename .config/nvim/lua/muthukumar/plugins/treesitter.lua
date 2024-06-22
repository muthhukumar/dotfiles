return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {
          "c", "lua", "vim", "javascript", "html", "typescript", "json", "go", "dockerfile", "css", "markdown", "markdown_inline", "tsx", "rust", "vimdoc"
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  }
}
