local opt = vim.opt
local command = vim.api.nvim_command


command("syntax on")
command("filetype plugin indent on")




opt.number = true
opt.wrap = false
opt.backup = false
opt.writebackup = false
opt.signcolumn = "number"
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.termguicolors = true
opt.background = "dark"
vim.g["netrw_liststyle"] = 3

local fonts = {
  "Cascadia Code PL:h12",
  "Hack Nerd Font Mono:h12",
  "Agave Nerd Font Mono:h13"}
opt.guifont = fonts[3]

command("colorscheme nord")

vim.filetype.add({extension = {odin = 'odin'}})

vim.keymap.set("t","<Esc>","<C-\\><C-n>")

require('lualine').setup()
