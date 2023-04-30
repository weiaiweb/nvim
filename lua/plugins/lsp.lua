require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "pyright",
    "vtsls",
    "html",
    "cssls",
    "jsonls",
    "vimls"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = {
    lua_ls = require("lspconfig").lua_ls,
    pyright = require("lspconfig").pyright,
    vtsls = require("lspconfig").vtsls,
    vimls = require("lspconfig").vimls,
    html = require("lspconfig").html,
    cssls = require("lspconfig").cssls,
    jsonls = require("lspconfig").jsonls,
}

for name, config in pairs(servers) do
    config.setup {
        capabilities = capabilities,
    }
end

