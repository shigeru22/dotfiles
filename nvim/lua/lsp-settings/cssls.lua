local temp_capabilities = vim.lsp.protocol.make_client_capabilities()
temp_capabilities.textDocument.completion.completionItem.snippetSupport = true

local cssls_config = {
  cmd = { "vscode-css-language-server", "--stdio" },
  capabilities = temp_capabilities
}

require("lspconfig").cssls.setup(cssls_config)
