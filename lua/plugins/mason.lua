return {
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  opts = {
    ensure_installed = {
      "actionlint",
      "black",
      "blade-formatter",
      "html-lsp",
      "intelephense",
      "php-debug-adapter",
      "phpstan",
      "pint",
      "prettierd",
      "pyright",
      "rustywind",
      "shellcheck",
      "shfmt",
      "stylua",
      "tailwindcss-language-server",
    },

    automatic_installation = { exclude = { "phpactor" } },
    lspconfig = {
      phpactor = { enable = false },
      intelephense = { enable = true },
    },
  },
}
