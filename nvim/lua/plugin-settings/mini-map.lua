local mini_map_config = {
  integrations = nil,
  symbols = {
    encode = nil,
    scroll_line = '█',
    scroll_view = '┃'
  },
  window = {
    focusable = false,
    side = 'right',
    show_integration_count = true,
    width = 8,
    winblend = 25
  }
}

require("mini.map").setup(mini_map_config)

MiniMap.open()
