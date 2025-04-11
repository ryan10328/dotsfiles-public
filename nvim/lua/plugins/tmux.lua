return {
  "alexghergh/nvim-tmux-navigation",
  keys = {
    {
      "<C-h>",
      "<Cmd>NvimTmuxNavigateLeft<cr>",
      desc = "Navigate left",
    },
    {
      "<C-j>",
      "<Cmd>NvimTmuxNavigateDown<cr>",
      desc = "Navigate down",
    },
    {
      "<C-k>",
      "<Cmd>NvimTmuxNavigateUp<cr>",
      desc = "Navigate up",
    },
    {
      "<C-l>",
      "<Cmd>NvimTmuxNavigateRight<cr>",
      desc = "Navigate right",
    },
  },
  config = true,
}
