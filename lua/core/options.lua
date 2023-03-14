local opt = vim.opt

-- 行号
opt.number = true
opt.relativenumber = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = false

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口在右方和下方
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 设置缓冲区末尾的~
opt.fillchars:append("eob: ")

-- 设置命令行高度为0
-- opt.cmdheight = 0

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd [[colorscheme gruvbox]]

-- 编码
vim.g.encoding = 'utf-8'

-- 防止备份
opt.backup = false


