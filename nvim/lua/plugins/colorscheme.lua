return {
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      style = "darker",
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
