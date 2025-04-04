return {
  {
    "AlexvZyl/nordic.nvim",
    name = "nordic",
    lazy = false,
    priority = 1000,
    opts = {
      bright_border = true,
      telescope = {
        style = "classic",
      },
      noice = {
        style = "classic",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },
}
