local M = {}

M.general = {
  n = {
    ["sh"] = { "<C-w>h", "viewport left" },
    ["sl"] = { "<C-w>l", "viewport right" },
    ["sk"] = { "<C-w>k", "viewport up" },
    ["sj"] = { "<C-w>j", "viewport down" },

    ["<C-h>"] = { ":vertical resize -5<CR>" },
    ["<C-l>"] = { ":vertical resize +5<CR>" },
    ["<C-j>"] = { ":horizontal resize -5<CR>" },
    ["<C-k>"] = { ":horizontal resize +5<CR>" },

    ["x"] = { '"_x', "blackhole delete" },

    ["<leader>gg"] = { ":LazyGit<CR>", "LazyGit" },

    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "LSP formatting",
    },

    ["gf"] = {
      function()
        require("telescope.builtin").lsp_document_symbols { symbols = "function" }
      end,
    },
    ["<leader>td"] = { ":TodoTelescope keywords=TODO<CR>", "List TODOs" },
  },
}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>dt"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle DAP UI",
    },
  },
}

M.lsp = {
  n = {
    ["<leader>ca"] = {
      function()
        require("actions-preview").code_actions()
      end,
      "Preview code action",
    },
    ["<leader>fn"] = {
      "<cmd> Navbuddy<CR>",
      "Navbuddy",
    },
  },
}

return M
