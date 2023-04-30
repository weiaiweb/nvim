require("core.options")
require("core.keymaps")
require("core.autocmd")
require("plugins.plugins-setup")

-- 插件
require("plugins/nvim-tree")
require("plugins/lualine")
require("plugins/bufferline")
require("plugins/comment")
require("plugins/treesitter")
require("plugins/autopairs")
require("plugins/telescope")
require("plugins/toggleterm")
require("plugins/dashboard")
require("plugins/indentline")
-- lsp
require("plugins/lsp")
require("plugins/cmp")
require("plugins/gitsigns")
require("plugins/lspsaga")
-- dap
require("dap.setup")
-- code-runner
require("plugins/code-runner")
-- formatter
require("plugins/formatter")
