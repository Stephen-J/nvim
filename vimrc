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
set signcolumn=yes
set updatetime=300
set expandtab
set shiftwidth=2
set softtabstop=2


"this is only necessary if you use set termguicolors.
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"

"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors "This is needed for CocList to display highlighting



" fixes glitch? in colors when using vim with tmux

"set background=dark
"set t_Co=256



"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"

set background=dark
packadd nord-vim
colorscheme nord

let g:netrw_liststyle=3

let g:conjure_log_auto_close=v:false
let g:conjure_log_direction="vertical"
packadd conjure

packadd coc.nvim

inoremap <silent><expr> <c-space> coc#refresh()
