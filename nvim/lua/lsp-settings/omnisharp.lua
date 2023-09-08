local omnisharp_config = {
  cmd = { "/opt/omnisharp/OmniSharp" },
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = false,
  enable_roslyn_analyzers = false,
  organize_imports_on_format = false,
  enable_import_completion = false,
  sdk_include_prereleases = true,
  analyze_open_documents_only = false
}

require("lspconfig").omnisharp.setup(omnisharp_config)
