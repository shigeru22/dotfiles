local temp_capabilities = vim.lsp.protocol.make_client_capabilities()
temp_capabilities.textDocument.completion.completionItem.snippetSupport = true

local html_config = {
  cmd = { "vscode-html-language-server", "--stdio" },
  capabilities = temp_capabilities
}

require("lspconfig").html.setup(html_config)
