-- 自动缩进命令

-- local auto_indent = vim.api.nvim_create_augroup("AUTO_INDENT", {clear = true})
-- vim.api.nvim_create_autocmd({"BufWritePost"}, {
--     pattern = "*",
--     group = auto_indent,
--     command = 'normal! gg=G``'
-- })

-- clear=true 如果创建的autocommand组已经存在，则将已经存在的autocommand组删除
-- see more: https://github.com/glepnir/nvim-lua-guide-zh
local myAutoGroupt = vim.api.nvim_create_augroup("myAutoGroupt", {
	clear = true,
})
-- 用O换行不延续注释
vim.api.nvim_create_autocmd("BufEnter", {
	group = myAutoGroupt,
	pattern = "*",
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions
			- "o" -- O and o, don't continue comments
			+ "r" -- But do continue when pressing enter.
	end,
})
