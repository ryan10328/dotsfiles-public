local status, packer = pcall(require, 'packer')

if (not status) then
  print("Packer is not installed...")
return end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      vim.cmd [[:Neotree show]]
    end
  }

  use {
    's1n7ax/nvim-window-picker',
    tag = 'v1.*',
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
  use 'lewis6991/gitsigns.nvim'
  use 'akinsho/nvim-bufferline.lua'

end)
