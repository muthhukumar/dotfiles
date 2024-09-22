function CenterFile()
	-- Close all other vertical splits
	vim.cmd("wincmd o")

	-- Get the total width of the screen
	local total_width = vim.fn.winwidth(0)

	-- Set the desired width of the content
	local content_width = 120

	-- Calculate the side margins (padding)
	local side_margin = math.floor((total_width - content_width) / 2)

	-- Open vertical splits and resize them
	vim.cmd("vnew | wincmd H")
	vim.cmd("vertical resize " .. side_margin)
	vim.cmd("wincmd l")
	vim.cmd("vnew | wincmd L")
	vim.cmd("vertical resize " .. side_margin)

	-- Focus back to the main content window
	vim.cmd("wincmd h")
end

vim.api.nvim_create_user_command("CenterFile", CenterFile, {})
