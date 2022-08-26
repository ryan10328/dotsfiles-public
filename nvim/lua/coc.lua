-- basic codeaction for coc.nvim
vim.api.nvim_set_keymap("n", "<space>.", "<Plug>(coc-codeaction)", {})
vim.api.nvim_set_keymap("n", "<space>d", "<Plug>(coc-definition)", {})
vim.api.nvim_set_keymap("n", "<space>r", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<space>h", ":call CocActionAsync('doHover')<CR>", { silent = true, noremap = true })

-- use enter or tab to choose the target
vim.cmd [[
  inoremap <silent><expr> <Tab> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<Tab>" 
  inoremap <silent><expr> <CR>  coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
]]

-- prettier remap
vim.api.nvim_set_keymap("v", "<space>f", "<Plug>(coc-format-selected)", {})
vim.api.nvim_set_keymap("n", "<space>f", "<Plug>(coc-format-selected)", {})
vim.api.nvim_set_keymap("n", ",f", ":CocCommand prettier.formatFile<CR>", { noremap = true })
