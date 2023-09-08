local rust_analyzer_config = {
  cmd = { "/opt/rust-analyzer/rust-analyzer" }
}

require("lspconfig").rust_analyzer.setup(rust_analyzer_config)
