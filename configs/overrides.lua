local M = {}

M.treesitter = {
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
}

M.mason = {
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
}

M.telescope = {
  defaults = {
    mappings = {
      i = {
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
      },
    },
  },
}

return M
