vim.cmd("aunmenu PopUp")

vim.cmd("anoremenu PopUp.Go\\ to\\ Declaration        <Cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("anoremenu PopUp.Go\\ to\\ Type\\ Definition  <Cmd>lua vim.lsp.buf.type_definition()<CR>")
vim.cmd("anoremenu PopUp.Go\\ to\\ References         <Cmd>lua vim.lsp.buf.references()<CR>")
vim.cmd("anoremenu PopUp.Hover                        <Cmd>lua vim.lsp.buf.hover()<CR>")

vim.cmd("anoremenu PopUp.-1-                          <Nop>")

vim.cmd("anoremenu PopUp.Rename\\ Symbol              <Cmd>lua vim.lsp.buf.rename()<CR>")
vim.cmd("anoremenu PopUp.Format\\ Document            <Cmd>lua vim.lsp.buf.format()<CR>")

vim.cmd("anoremenu PopUp.-2-                          <Nop>")

vim.cmd("vnoremenu PopUp.Cut                          \"+x")
vim.cmd("vnoremenu PopUp.Copy                         \"+y")
vim.cmd("anoremenu PopUp.Paste                        \"+gP")
vim.cmd("vnoremenu PopUp.Paste                        \"+P")
vim.cmd("vnoremenu PopUp.Delete                       \"_x")
vim.cmd("nnoremenu PopUp.Select\\ All                 ggVG")
vim.cmd("vnoremenu PopUp.Select\\ All                 gg0oG$")
vim.cmd("inoremenu PopUp.Select\\ All                 <C-Home><C-O>VG")
-- vim.cmd("anoremenu PopUp.-1-                         <Nop>")
