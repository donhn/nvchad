local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

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
        "pyright",
        -- bash
        "beautysh",
        "bash-language-server",
        -- C/C++
        "clangd",
        "clang-format",
      },
    },
  },

  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        c = { "clang_format" },
        cpp = { "clang_format" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "python",
        "bash",
        "cpp",
        "c",
      },
      indent = {
        enable = true,
        disable = {
          "python",
        },
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
      },
    },
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },
  },

  {
    "cameron-wags/rainbow_csv.nvim",
    config = true,
    ft = {
      "csv",
      "tsv",
      "csv_semicolon",
      "csv_whitespace",
      "csv_pipe",
      "rfc_csv",
      "rfc_semicolon",
    },
    cmd = {
      "RainbowDelim",
      "RainbowDelimSimple",
      "RainbowDelimQuoted",
      "RainbowMultiDelim",
    },
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },
}

return plugins
