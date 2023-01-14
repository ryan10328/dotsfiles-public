local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then return end

lspsaga.setup {
  server_filetype_map = {}
}

local options = { noremap = true, silent = true }

-- shorcut of keymap
local keymap = vim.keymap.set
keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', options)
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', options)
keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', options)
keymap('n', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', options)
keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', options)
keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', options)
