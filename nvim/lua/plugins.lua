local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer is not installed...")
return end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  -- nvim tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons'
    },
    tag = 'nightly' -- it's optional, updated every week
  }

  -- onedarkpro colorscheme
  use 'olimorris/onedarkpro.nvim'

  -- lualine status bar
  use 'hoob3rt/lualine.nvim'

  -- snippet
  use 'L3MON4D3/LuaSnip'

  -- lspkind vscode-like pictograms
  use 'onsails/lspkind-nvim'

  -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-buffer'

  -- nvim-cmp source for nvim's built-in lsp
  use 'hrsh7th/cmp-nvim-lsp'

  -- completion
  use 'hrsh7th/nvim-cmp'

  -- mason
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  -- tree-sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- autopair, autotag
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- nvim-colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- lspsaga
  use {
    'glepnir/lspsaga.nvim',
    branch = 'main',
  }

  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

end)
