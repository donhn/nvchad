-- Set relative number on by default.
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "81"

-- Identify shader files as glsl.
vim.cmd [[
  au BufRead,BufNewFile *.vert,*.frag,*.geom set filetype=glsl
]]
