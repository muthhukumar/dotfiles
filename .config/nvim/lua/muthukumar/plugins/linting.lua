return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			markdown = { "markdownlint" },
		}

		-- Function to check if a file exists in the project root directory
		local function file_exists_in_project_root(filename)
			local project_root = vim.fn.getcwd()
			local filepath = project_root .. "/" .. filename
			local f = io.open(filepath, "r")
			if f ~= nil then
				io.close(f)
				return true
			else
				return false
			end
		end

		-- Check if any ESLint configuration file exists in the project root
		local eslint_config_exists = file_exists_in_project_root(".eslintrc")
			or file_exists_in_project_root(".eslintrc.json")
			or file_exists_in_project_root(".eslintrc.js")
			or file_exists_in_project_root(".eslintrc.yaml")
			or file_exists_in_project_root(".eslintrc.yml")

		-- Configure linting if ESLint configuration file exists
		if eslint_config_exists then
			lint.linters_by_ft = {
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				javascriptreact = { "eslint_d" },
				typescriptreact = { "eslint_d" },
			}
		end

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})

		-- vim.keymap.set("n", "<leader>l", function()
		-- 	lint.try_lint()
		-- end, { desc = "Trigger linting for current file" })
	end,
}
