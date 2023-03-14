vim.g.mapleader = " "

local keymap = vim.keymap

-----------插入模式---------
keymap.set("i", "jk", "<ESC>")

-----------视觉模式---------
-- 单行或者多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-----------正常模式----------
-- 窗口分割、移动
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- keymap.set("n", "<leader>h", "<C-w>h")
-- keymap.set("n", "<leader>j", "<C-w>j")
-- keymap.set("n", "<leader>k", "<C-w>k")
-- keymap.set("n", "<leader>l", "<C-w>l")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<leader><right>", ":bnext<CR>")
keymap.set("n", "<leader><left>", ":bprevious<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>ft", ":NvimTreeToggle<CR>")

-- toggleterm
keymap.set("n", "<leader>t", ":ToggleTerm direction=float<CR>")

-- markdown-preview
keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>")
keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>")

-- telescope
keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>")
keymap.set('n', '<leader>fb', ":Telescope buffers<CR>")
keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>")
keymap.set('n', '<leader>fc', ":Telescope colorscheme<CR>")

-- dap
keymap.set('n', '<F6>', function() require('dap').continue() end)
keymap.set('n', '<F10>', function() require('dap').step_over() end)
keymap.set('n', '<F11>', function() require('dap').step_into() end)
keymap.set('n', '<F12>', function() require('dap').step_out() end)
keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
keymap.set({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end)
keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)
keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)
keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)

-- code_runner
keymap.set('n', '<leader>lr', ':RunCode<CR>', { noremap = true, silent = false })
keymap.set('n', '<leader>lf', ':RunFile<CR>', { noremap = true, silent = false })
keymap.set('n', '<leader>lft', ':RunFile tab<CR>', { noremap = true, silent = false })
keymap.set('n', '<leader>lp', ':RunProject<CR>', { noremap = true, silent = false })
keymap.set('n', '<leader>lc', ':RunClose<CR>', { noremap = true, silent = false })
keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

