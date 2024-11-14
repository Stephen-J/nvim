local module = {}

local basic_theme = function()
  vim.cmd("colorscheme nord")
  require('lualine').setup {
    options = {section_separators = {left = '',right = ''}}, 
  }
  vim.g["netrw_liststyle"] = 3
end

function module.set()
  basic_theme()
end


return module
