local module = {}

function module.set ()
  vim.o.number = true
  vim.o.wrap = false
  vim.o.backup = false
  vim.o.writebackup = false
  vim.o.signcolumn = "number"
  vim.o.expandtab = true
  vim.o.shiftwidth = 2
  vim.o.softtabstop = 2
  vim.o.termguicolors = true
  vim.o.background = "dark"
end

return module
