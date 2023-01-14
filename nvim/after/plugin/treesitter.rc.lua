local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

treesitter.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'c_sharp'
  },
  autotag = {
    enable = true,
  }
}
