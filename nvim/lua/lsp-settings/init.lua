local lspconfig = require("lspconfig")
local lsp_defaults = lspconfig.util.default_config

-- set defaults
lsp_defaults.capabilities = vim.tbl_deep_extend(
  "force",
  lsp_defaults.capabilities,
  require("cmp_nvim_lsp").default_capabilities()
)

require("lsp-settings.html")
require("lsp-settings.cssls")
require("lsp-settings.tsserver")
require("lsp-settings.jsonls")
require("lsp-settings.eslint")
require("lsp-settings.omnisharp")
require("lsp-settings.rust-analyzer")
