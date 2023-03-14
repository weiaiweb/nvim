vim.o.timeout = true
vim.o.timeoutlen = 400
require("which-key").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below

	window = {
		border = "single", -- none, single, double, shadow
		position = "bottom", -- bottom, top
		margin = { 1, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
		padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
		winblend = 0,
	},
})
