-- plugin is not lua module, using vim commands instead

vim.cmd("let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']")

vim.cmd(":EditorConfigEnable")
