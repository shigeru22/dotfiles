local Menu = require("nui.menu")
local event = require("nui.utils.autocmd").event

local popup_options = {
  relative = "cursor",
  size = {
    width = 25
  },
  position = {
    row = 1,
    col = 0
  },
  border = {
    style = "rounded",
    text = {
      -- top = "[Choose Item]",
      top_align = "center"
    }
  },
  win_options = {
    winhighlight = "Normal:Normal"
  }
}

local function on_menu_selection(option)
  local temp_option = string.lower(option.text)
  if temp_option == "hover" then vim.cmd("lua vim.lsp.buf.hover()")
  elseif temp_option == "go to declaration" then vim.cmd("lua vim.lsp.buf.declaration()")
  elseif temp_option == "go to type definition" then vim.cmd("lua vim.lsp.buf.type_definition()")
  elseif temp_option == "go to references" then vim.cmd("lua vim.lsp.buf.references()")
  elseif temp_option == "rename symbol" then vim.cmd("lua vim.lsp.buf.rename()")
  elseif temp_option == "format document" then vim.cmd("lua vim.lsp.buf.format()")
  -- elseif temp_option == "cut" then vim.cmd("autocmd \"+x")
  -- elseif temp_option == "copy" then vim.cmd("autocmd \"+y")
  -- elseif temp_option == "paste" then vim.cmd("autocmd \"+gP")
  -- elseif temp_option == "delete" then vim.cmd("autocmd \"_x")
  -- elseif temp_option == "select all" then vim.cmd("autocmd ggVG")
  else print("Function '" .. option.text .. "' not implemented.")
  end
end

PopUpMenu = Menu(popup_options, {
  lines = {
    Menu.item("Hover"),
    Menu.item("Go to Declaration"),
    Menu.item("Go to Type Definition"),
    Menu.item("Go to References"),
    Menu.separator("", { char = "-", text_align = "right" }),
    Menu.item("Rename Symbol"),
    Menu.item("Format Document"),
    -- Menu.separator("", { char = "-", text_align = "right" }),
    -- Menu.item("Cut"),
    -- Menu.item("Copy"),
    -- Menu.item("Paste"),
    -- Menu.item("Delete"),
    -- Menu.item("Select All")
  },
  max_width = 20,
  keymap = {
    focus_next = { "j", "<Down>", "<Tab>" },
    focus_prev = { "k", "<Up>", "<S-Tab>" },
    close = { "<Esc>", "<C-c>" },
    submit = { "<CR>", "<Space>" }
  },
  -- on_close = function()
  --   print("Closed")
  -- end,
  on_submit = on_menu_selection
})
