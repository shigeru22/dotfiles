-- plugin is not lua module, using vim commands instead

vim.cmd("let g:gitblame_message_template = ' <author> • <date> • <summary>'")
vim.cmd("let g:gitblame_date_format = '%r'")
vim.cmd("let g:gitblame_message_when_not_committed = 'Uncommitted changes'")
vim.cmd("let g:gitblame_highlight_group = 'Comment'")
vim.cmd("let g:gitblame_delay = 1000")

vim.cmd(":GitBlameEnable")
