""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set nowrap
filetype on
syntax on
filetype plugin on
filetype indent on
set nobackup
set nowritebackup
set number
set signcolumn=yes
set updatetime=300
set expandtab
set shiftwidth=2
set softtabstop=2
set termguicolors "This is needed for CocList to display highlighting
set background=dark
let g:netrw_liststyle=3



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions for setting up plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function AddStandard()
  packadd nord-vim
  colorscheme nord 
  packadd coc.nvim
  inoremap <silent><expr> <c-space> coc#refresh()
endfunction

function AddConjure()
  let g:conjure_log_auto_close=v:false
  let g:conjure_log_direction="vertical"
  packadd conjure 
endfunction




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add the plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call AddStandard()
call AddConjure()
