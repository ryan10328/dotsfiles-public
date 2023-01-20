local status, nvim_tree = pcall(require, 'nvim-tree')
if (not status) then return end

nvim_tree.setup({
  view = {
    adaptive_size = true,
    number = true,
  },
  float = {
    enable = true,
  }
})

local keymap = vim.keymap
-- setup nvim.tree keymaps
keymap.set('n', '<leader>t', ':NvimTreeToggle<cr>', { silent = true })
