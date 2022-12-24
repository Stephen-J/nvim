local fonts = {
  "Cascadia Code PL:h12",
  "Hack Nerd Font Mono:h12",
  "Agave Nerd Font Mono:h13"}

vim.cmd("colorscheme nord")
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")



vim.keymap.set("t","<Esc>","<C-\\><C-n>")



vim.filetype.add({extension = {odin = 'odin'}})

local opt = vim.opt
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
opt.guifont = fonts[3]




require('lualine').setup()
require('workspaces').setup({
  hooks = {open = function(name,path)
                    vim.cmd('source Session.vim')
                  end}
})

require('nvim-treesitter.configs').setup {
  highlight = {enable = true}
}

require('lspconfig').clojure_lsp.setup{}
require('lspconfig').ols.setup{}
require('lspconfig').elixirls.setup{
  cmd = {'elixirls'};
}

require('lspconfig').rust_analyzer.setup{
  cmd = {'rust-analyzer'}
}

require('lspconfig').tsserver.setup{
  cmd = {'yarn','typescript-language-server','--stdio'}
}
