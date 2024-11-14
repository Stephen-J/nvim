local module = {}

function module.use_fish ()
  vim.o.shell = [[c:\\msys64\\msys2_shell.cmd -defterm -here -no-start -ucrt64 -shell fish]]
  vim.o.shellcmdflag = '--command'
  vim.o.shellquote = '\"'
  vim.o.shellxquote = ' '
end

function module.use_powershell ()
  vim.o.shell = "powershell"
  vim.o.shellcmdflag = "-command"
  vim.o.shellquote = '\"'
  vim.o.shellxquote = ' '
end

return module
