local cokeline_config = {
  show_if_buffers_are_at_least = 1,
  buffers = {
    -- filter_valid = function(buffer) -> true | false,
    -- filter_visible = function(buffer) -> true | false,
    focus_on_delete = 'prev',
    new_buffers_position = 'next',
    delete_on_right_click = false
  },
  mappings = {
    cycle_prev_next = true,
    disable_mouse = false
  },
  history = {
    enabled = true,
    size = 10
  },
  rendering = {
    max_buffer_width = 999
  },
  pick = {
    use_filename = true,
    letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERTYQP'
  },
  default_hl = {
    fg = '#d4678e',
    bg = '#fff0f0',
    style = 'NONE'
  },
  fill_hl = 'Normal',
  -- components = {..},
  -- rhs = {..},
  tabs = {
    placement = "left",
    -- components = {..}
  },
  sidebar = {
    -- filetype = '<filetype>',
    -- components = {..}
  }
}

require("cokeline").setup(cokeline_config)

local map = vim.api.nvim_set_keymap

map('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)',  { silent = true })
map('n', '<Tab>', '<Plug>(cokeline-focus-next)',  { silent = true })
map('n', '<Leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
map('n', '<Leader>n', '<Plug>(cokeline-switch-next)', { silent = true })
map('n', '<C-w>c', '<Plug>(cokeline-pick-close)', { silent = true })

for i = 1,9 do
  map('n', ('<F%s>'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
  map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-switch-%s)'):format(i), { silent = true })
end
