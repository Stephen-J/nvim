local module = {}

function module.setup ()
  local fonts = {
    "Cascadia Code:h12",
    "Hack Nerd Font Mono:h12",
    "Agave Nerd Font Mono:h13",
    "CaskaydiaCove Nerd Font Mono:h14"}

  vim.o.guifont=fonts[4]
end

return module
