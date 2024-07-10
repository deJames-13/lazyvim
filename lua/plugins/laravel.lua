-- {
--   "adalessa/laravel.nvim",
--   dependencies = {
--     "nvim-telescope/telescope.nvim",
--     "tpope/vim-dotenv",
--     "MunifTanjim/nui.nvim",
--     "nvimtools/none-ls.nvim",
--   },
--   cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
--   features = {
--     null_ls = {
--       enable = false,
--     },
--   },
--   keys = {
--     { "<leader>la", ":Laravel artisan<cr>" },
--     { "<leader>lr", ":Laravel routes<cr>" },
--     { "<leader>lm", ":Laravel related<cr>" },
--   },
--   event = { "VeryLazy" },
--   config = true,
-- }

return {
  {
    "jwalton512/vim-blade",
    ft = { "blade" },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- @type lspconfig.options
      servers = {
        -- lua_ls = {mason = false},
        intelephense = {
          filetypes = { "php", "blade" },
          settings = {
            intelephense = {
              filetypes = { "php", "blade" },
              files = {
                associations = { "*.php", "*.blade.php" }, -- Associating .blade.php files as well
                maxSize = 5000000,
              },
            },
          },
        },
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        sources = {
          nls.builtins.diagnostics.phpstan.with({
            extra_args = {
              "--memory-limit=2G",
            },
          }),
        },
      }
    end,
  },
}
