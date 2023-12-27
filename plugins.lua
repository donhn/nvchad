local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- lua
        "lua-language-server",
        "stylua",
        -- python
        "jedi-language-server",
        "black",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
      },
    },
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },

  {
    "xiyaowong/transparent.nvim",
    lazy=false,
  },
}

return plugins
