local tsserver_config = {
  cmd = { "typescript-language-server", "--stdio" },
}

require("lspconfig").tsserver.setup(tsserver_config)
