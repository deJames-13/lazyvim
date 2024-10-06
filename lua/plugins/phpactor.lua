return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      mason = {
        enable = true,
        auto_install = false,
      },
      servers = {
        phpactor = { enabled = false },
      },
    },
  },
}
