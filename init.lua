vim.api.nvim_command("syntax on")
vim.api.nvim_command("filetype plugin indent on")

vim.opt.number = true
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.signcolumn = "number"
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g["netrw_liststyle"] = 3
vim.opt.guifont = vim.opt.guifont + "Cascadia Code PL:h12"

vim.api.nvim_command("colorscheme nord")

vim.filetype.add({extension = {odin = 'odin'}})
