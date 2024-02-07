return {
  "neovim/nvim-lspconfig",
  dependencies = "aznhe21/actions-preview.nvim",
  config = function()
    require "plugins.configs.lspconfig"
    require "custom.configs.lspconfig"
  end,
}
