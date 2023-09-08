vim.cmd([[
  function! s:callback(selected) abort
    echo a:selected
  endfunction
  
  let list = ['aaa', 'bbb', 'ccc', 'ddd', 'eee']
  call popup_menu#open(list, {selected -> s:my_callback(selected)})
]])
