return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<leader>bt", "<cmd>ToggleTerm direction=float <cr>", desc = "Toggle terminal" },
      { "<leader>bT", "<cmd>ToggleTerm direction=horizontal <cr>", desc = "Toggle terminal horizontal split" },
    },

    opts = {},
  },
}
