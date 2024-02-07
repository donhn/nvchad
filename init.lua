-- Set relative number on by default.
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "81"

-- powershell
if vim.fn.has "win32" or vim.fn.has "win64" then
  -- Set shell to powershell.exe
  vim.o.shell = "powershell.exe"

  -- Set shellxquote
  vim.o.shellxquote = ""

  -- Set shellcmdflag to include necessary PowerShell flags
  vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command "

  -- Set shellquote to empty string as it's not needed for PowerShell
  vim.o.shellquote = ""

  -- Set shellpipe and shellredir to use Out-File with UTF8 encoding
  vim.o.shellpipe = "| Out-File -Encoding UTF8 %s"
  vim.o.shellredir = "| Out-File -Encoding UTF8 %s"
end

-- Identify shader files as glsl.
vim.cmd [[
  au BufRead,BufNewFile *.vert,*.frag,*.geom set filetype=glsl
]]

-- Turn off colorcolumn for text files.
vim.cmd [[
  au BufRead,BufNewFile *.txt set colorcolumn=0
]]
