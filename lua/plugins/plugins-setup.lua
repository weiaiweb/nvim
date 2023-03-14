-- 自动安装packer
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

local packer_bootstrap = ensure_packer()

-- 保存后自动更新安装软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字
-- vim.cmd([[
--     augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
--     augroup end
-- ]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- 目录树
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
	})
	-- 主题
	use("folke/tokyonight.nvim")
	use("ellisonleao/gruvbox.nvim")
	-- 状态栏
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- 标签栏
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
	-- 注释：gcc(单行) / gc(多行)
	use("numToStr/Comment.nvim")
	-- 自动补全括号
	use("windwp/nvim-autopairs")
	-- 对齐线
	use("lukas-reineke/indent-blankline.nvim")
	-- 窗口移动
	use("christoomey/vim-tmux-navigator") -- 用ctl-hjkl来定位窗口
	-- 语法高亮
	use("nvim-treesitter/nvim-treesitter")
	use("p00f/nvim-ts-rainbow") -- 配合treesitter，不同括号颜色区分
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- 终端
	use({ "akinsho/toggleterm.nvim", tag = "*" })
	-- 启动界面
	use({
		"glepnir/dashboard-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
	})
	-- LSP
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim", -- mason.nvim和lspconfig的桥梁
		"neovim/nvim-lspconfig",
	})
	-- 自动补全
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("L3MON4D3/LuaSnip") -- snippets引擎，不装这个自动补全会出问题
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use("hrsh7th/cmp-path") -- 文件路径
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-cmdline")
	-- git提示
	use("lewis6991/gitsigns.nvim")
	-- lspsaga
	use({
		"glepnir/lspsaga.nvim",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			--Please make sure you install markdown and markdown_inline parser
			{ "nvim-treesitter/nvim-treesitter" },
		},
	})
	-- 格式化
	use("sbdchd/neoformat")
	-- mardowm预览
	use({
		"iamcco/markdown-preview.nvim",
	})
	-- which-key
	-- use("folke/which-key.nvim")
	-- 多选
	use("mg979/vim-visual-multi")

	-- dap(目前只能调试python)
	use("mfussenegger/nvim-dap")
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("theHamsta/nvim-dap-virtual-text")
    -- latex
    -- use("lervag/vimtex")
    -- 代码运行
    use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }

	if packer_bootstrap then
		require("packer").sync()
	end
end)
