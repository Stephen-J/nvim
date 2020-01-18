" This is my vim rc
set nocompatible
set nowrap
filetype on
syntax on
filetype plugin on
filetype indent on
set nobackup
set nowritebackup
set number

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

set background=dark
packadd nord-vim
colorscheme nord

let g:netrw_liststyle=3
