local status, packer = pcall(require, 'packer')

if (not status) then
  print('packer is not installed')
  return
end

local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim' .. install_path)
  vim.cmd [[packadd packer.nvim]]
end

packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use "navarasu/onedark.nvim"
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use "MunifTanjim/prettier.nvim"
  use "L3MON4D3/LuaSnip"

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use "windwp/nvim-ts-autotag"
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use "nvim-lua/plenary.nvim" -- dependency of the telescope
  use "akinsho/nvim-bufferline.lua"
  use "norcalli/nvim-colorizer.lua"
  use {
    "neoclide/coc.nvim",
    branch = "release"
  }
  use "lewis6991/gitsigns.nvim"
  use "lukas-reineke/indent-blankline.nvim"

  if is_bootstrap then
    require('packer').sync()
  end

end)


if is_bootstrap then
  print '=================================='
  print '    Plugins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
