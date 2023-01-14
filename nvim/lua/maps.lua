local keymap = vim.keymap

-- do not yank with x
keymap.set('n', 'x', '"_x')

-- +/-
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- delete a word backward
keymap.set('n', 'dw', 'vb"_d')

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- tabs control
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })

-- split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- move window
keymap.set('n', '<Space>', '<C-w>w')

keymap.set('', '<C-h>', '<C-w>h')
keymap.set('', '<C-k>', '<C-w>k')
keymap.set('', '<C-j>', '<C-w>j')
keymap.set('', '<C-l>', '<C-w>l')

-- resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- setup keymap of nvim-tree

