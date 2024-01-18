local fonts = {
  "Cascadia Code:h12",
  "Hack Nerd Font Mono:h12",
  "Agave Nerd Font Mono:h13",}

if vim.g.neovide == true then
  vim.o.guifont="CaskaydiaCove Nerd Font Mono:h12"
else
  vim.o.guifont=fonts[1]
end


vim.cmd("colorscheme nord")
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.cmd("set shell=powershell")
vim.cmd("set shellcmdflag=-command")
vim.cmd("set shellquote=\"")
vim.cmd("set shellxquote= ")



vim.keymap.set("t","<Esc>","<C-\\><C-n>")



vim.filetype.add({
  extension = {
    odin = 'odin',
    vert = 'glsl',
    frag = 'glsl',
    cljd = 'clojure',
    cljc = 'clojure',
    cljs = 'clojure',
    clj = 'clojure',
    wgsl = 'wgsl'}})

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




require('lualine').setup {
  options = {section_separators = {left = '',right = ''}}
}
require('workspaces').setup({
  hooks = {open = function(name,path)
                    local projectFile = vim.fs.find("project.lua",{limit = 1})
                    if projectFile[1] then
                      vim.cmd.luafile(projectFile[1])
                    end
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
