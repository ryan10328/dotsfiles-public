local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then return end

lspsaga.setup {
  server_filetype_map = {}
}

local options = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap('n', 'gh', '<cmd>Lspsaga lsp_finder<cr>', options)
keymap({'n', 'v'}, '<leader>ca', '<cmd>Lspsaga code_action<cr>', options)
keymap('n', 'gr', '<cmd>Lspsaga rename<cr>', options)

keymap('n', 'gd', '<cmd>Lspsaga peek_definition<cr>', options)
keymap('n', 'gd', '<cmd>Lspsaga goto_definition<cr>', options)
keymap('n', '<leader>o', '<cmd>Lspsaga outline<cr>', options)

keymap('n', 'K', '<cmd>Lspsaga hover_doc<cr>', options)
keymap('n', 'K', '<cmd>Lspsaga hover_doc ++keep<cr>', options)

keymap('n', '<leader>sl', '<cmd>Lspsaga show_line_diagnostics<cr>', options)
keymap('n', '<leader>sc', '<cmd>Lspsaga show_cursor_diagnostics<cr>', options)
keymap('n', '<leader>sb', '<cmd>Lspsaga show_buf_diagnostics<cr>', options)
keymap('n', '[e', '<cmd>Lspsaga diagnostics_jump_prev<cr>', options)
keymap('n', ']e', '<cmd>Lspsaga diagnostics_jump_next<cr>', options)
