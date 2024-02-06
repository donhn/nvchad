return {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local conf = require "plugins.configs.telescope"
      conf.defaults.mappings.i = {
      ["<C-j>"] = require("telescope.actions").move_selection_next,
      ["<C-k>"] = require("telescope.actions").move_selection_previous,
      }

      return conf
    end,
}
