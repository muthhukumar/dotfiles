-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- Colorscheme
	use("bluz71/vim-nightfly-guicolors")

	-- tmux & split window navigator
	use("christoomey/vim-tmux-navigator")

	-- Maximizes and restores current window
	use("szw/vim-maximizer")

	-- Essential plugins --

	-- How to use
	-- 1. ysw" - ys is package command w is motion and " is what we want the word to surround with
	-- 2. ds" - ds is package command(delete) and the surrouding character to delete or we can use normal deletion(di" - Delete inside quote)
	-- 3. cs"' - cs is package command(change) old surrounding with new surrounding
	use("tpope/vim-surround")

	-- How to use
	-- 1. yw - yank word (usual vim shortcut)
	-- 2. grw - gr paste the copied word w(motion)
	use("vim-scripts/ReplaceWithRegister")

	-- commenting with gc
	-- How to use
	-- gc + motion
	-- gcc - toggle comments
	-- gc9j - comment out following next nine lines
	use("numToStr/Comment.nvim")

	-- file explorer icons
	use("kyazdani42/nvim-web-devicons")

	-- status line
	use("nvim-lualine/lualine.nvim")

	-- Fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- Autocompletion
	use("hrsh7th/cmp-buffer") -- Suggest text from current buffer
	use("hrsh7th/cmp-path") -- Suggest file path

	-- snippets
	use("L3MON4D3/LuaSnip") -- Snippet engine
	use("saadparwaiz1/cmp_luasnip") -- show snippets in autocompletion
	use("rafamadriz/friendly-snippets") -- collection of useful snippets

	-- Managing & installing lsp servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})

	-- file explorer 
  -- TODO - Maybe in the future use something else(telescope)
  use("nvim-tree/nvim-tree.lua")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
