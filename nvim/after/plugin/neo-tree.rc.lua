local status, tree = pcall(require, 'neo-tree')
if (not status) then return end

tree.setup();

-- map tree toggle
local keymap = vim.keymap
keymap.set('n', '<leader>t', '<cmd>Neotree toggle<cr>')
