local temp_capabilities = vim.lsp.protocol.make_client_capabilities()
temp_capabilities.textDocument.completion.completionItem.snippetSupport = true

local jsonls_config = {
  cmd = { "vscode-json-language-server", "--stdio" },
  capabilities = temp_capabilities
}

require("lspconfig").jsonls.setup(jsonls_config)
