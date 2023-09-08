local indent_blankline_config = {
  show_current_context = true,
  show_current_context_start = true,
  use_treesitter = true,
  show_trailing_blankline_indent = false
}

require("indent_blankline").setup(indent_blankline_config)
