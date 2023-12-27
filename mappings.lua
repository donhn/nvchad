local M = {}

M.general = {
  n = {
    ["sv"] = { ":vsplit<CR>", "split viewport vertical" },
    ["ss"] = { ":split<CR>", "split viewport horizontal" },
    ["sq"] = { ":close<CR>", "close viewport" },
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
  },
}

return M
