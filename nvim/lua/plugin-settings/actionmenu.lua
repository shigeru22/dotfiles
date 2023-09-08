-- plugin is not lua module, using vim commands instead

vim.cmd([[
  func! Demo()
    call actionmenu#open(['First', 'Second', 'Third'], 'Callback')
  endfunc

  func! Callback(index, item)
    echo "I selected index " . a:index
  endfunc
]])
