local nvimtree_config = {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = true,
  hijack_cursor = true,
  update_cwd = false,
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {}
  },
  system_open = {
    cmd = nil,
    args = {}
  },
  view = {
    width = 30,
    side = 'left',
  },
  renderer = {
    icons = {
      glyphs = {
        default = '',
        symlink = '',
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "",
          untracked = "",
          deleted = "✖",
          ignored = ""
        },
        folder = {
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = ""
        }
      }
    }
  }
}

local open_on_startup = true
local focus_editor_on_open = true

require("nvim-tree").setup(nvimtree_config)

if open_on_startup then
  vim.cmd("NvimTreeOpen")
  if focus_editor_on_open then
    vim.cmd("autocmd VimEnter * wincmd p")
  end
end
