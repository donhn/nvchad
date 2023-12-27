---@type ChadrcConfig

local M = {}

M.ui = {
  theme = "gruvbox_light",
  hl_override = {
    DiffChange = {
      fg = "#fabd2f",
    },
    Comment = {
      fg = "#bdae93",
    },
  },
}

M.plugins = "custom.plugins"

M.mappings = require "custom.mappings"

return M
