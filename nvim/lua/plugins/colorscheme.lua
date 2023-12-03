return {
  {
    "navarasu/onedark.nvim",
    lazy = true,
    name = "onedark",
    priority = 1000,
    opts = {
      style = "warmer",
      transparent = true,
      lualine = {
        transparent = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
