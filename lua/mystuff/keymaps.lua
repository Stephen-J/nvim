local module = {}

function module.set() 
  vim.keymap.set("t","<Esc>","<C-\\><C-n>")
  vim.keymap.set("n","<C-Right>",":tabn<CR>")
  vim.keymap.set("n","<C-Left>",":tabp<CR>")
end

return module
