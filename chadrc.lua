---@type ChadrcConfig

local M = {}

M.ui = {
  statusline = {
    theme = "vscode_colored",
    separator_style = "arrow",
  },

  theme = "gruvbox",
  hl_override = {
    DiffChange = {
      fg = "#fabd2f",
    },
    Comment = {
      fg = "#bdae93",
      italic = true,
    },
  },

  transparency = true,
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
