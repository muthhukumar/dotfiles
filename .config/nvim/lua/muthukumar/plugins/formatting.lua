return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier", "prettier_d" },
				typescript = { "prettier", "prettier_d" },
				javascriptreact = { "prettier", "prettier_d" },
				typescriptreact = { "prettier", "prettier_d" },
				svelte = { "prettier", "prettier_d" },
				css = { "prettier", "prettier_d" },
				html = { "prettier", "prettier_d" },
				json = { "prettier", "prettier_d" },
				yaml = { "prettier", "prettier_d" },
				markdown = { "prettier", "prettier_d" },
				graphql = { "prettier", "prettier_d" },
				lua = { "stylua" },
				go = { "goimports", "gofmt" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>fp", function()
			conform.format({
				lsp_fallback = true,
				async = true,
				timeout_ms = 1000,
			})
		end, { desc = "Format file or range (in visual mode)" })
	end,
}
