local treesitter_config = {
  ensure_installed = "all",
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },
  highlight = {
    enable = true,
    disable = { "c", "rust" },
    additional_vim_regex_highlighting = false
  }
}

require("nvim-treesitter.configs").setup(treesitter_config)
