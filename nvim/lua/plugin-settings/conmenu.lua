-- plugin is not lua module, using vim commands instead

vim.cmd("noremap <silent> <leader>m :ConMenu<CR>")

-- vim.g["conmenu#available_bindings"] = "1234567890wertyuiopasdfghlzxcvbnm"

local function is_lsp_ready()
  return vim.lsp.buf_is_attached()
end

local function is_normal()
  return vim.cmd("echo mode()") == "n"
end

local function is_insert()
  return vim.cmd("echo mode()") == "i"
end

local function is_visual()
  return vim.cmd("echo mode()") == "v"
end

local lsp_menu_options = {
  filter = is_lsp_ready
}

local normal_menu_options = {
  filter = is_normal
}

local insert_menu_options = {
  filter = is_insert
}

local visual_menu_options = {
  filter = is_visual
}

vim.g["conmenu#default_menu"] = {
  { "Hover", "<Cmd>lua vim.lsp.buf.hover()<CR>", lsp_menu_options },
  { "Go to Declaration", "<Cmd>lua vim.lsp.buf.declaration()<CR>", lsp_menu_options },
  { "Go to Type Definition", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", lsp_menu_options },
  { "Go to References", "<Cmd>lua vim.lsp.buf.references()<CR>", lsp_menu_options },
  { "─────────────────────────", nil, lsp_menu_options },
  { "Rename Symbol", "<Cmd>lua vim.lsp.buf.rename()<CR>", lsp_menu_options },
  { "Format Document", "<Cmd>lua vim.lsp.buf.format()<CR>", lsp_menu_options },
  { "─────────────────────────", nil, lsp_menu_options },
  { "Cut", "\"+x", visual_menu_options },
  { "Copy", "\"+y", visual_menu_options },
  { "Paste", "\"+gP", { filter = function () return is_normal() or is_insert() end } },
  { "Paste", "\"P", visual_menu_options },
  { "Delete", "\"_x", visual_menu_options },
  { "Select All", "ggVG", normal_menu_options },
  { "Select All", "gg0oG$", visual_menu_options },
  { "Select All", "<C-Home><C-O>VG", insert_menu_options }
}
