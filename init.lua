vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")


require('mystuff.theme').set()
require('mystuff.keymaps').set()
require('mystuff.gui').setup()
require('mystuff.options').set()
--require('mystuff.shell').use_powershell()
require('mystuff.lsp').setup()

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

vim.filetype.add({
  extension = {
    odin = 'odin',
    vert = 'glsl',
    frag = 'glsl',
    cljd = 'clojure',
    cljc = 'clojure',
    cljs = 'clojure',
    clj = 'clojure',
    bb = 'clojure',
    wgsl = 'wgsl'}})
