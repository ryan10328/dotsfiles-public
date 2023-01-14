local status, onedarkpro = pcall(require, 'onedarkpro')
if (not status) then return end

onedarkpro.setup {}


vim.cmd('colorscheme onedark')
