-- Set relative number on by default.
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "81"

-- powershell
if vim.fn.has "win32" or vim.fn.has "win64" then
  vim.o.shell = "powershell.exe"
end

-- Identify shader files as glsl.
vim.cmd [[
  au BufRead,BufNewFile *.vert,*.frag,*.geom set filetype=glsl
]]

-- Turn off colorcolumn for text files.
vim.cmd [[
  au BufRead,BufNewFile *.txt set colorcolumn=0
]]
