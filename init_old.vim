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
set signcolumn=number
set updatetime=300
set expandtab
set shiftwidth=2
set softtabstop=2
set termguicolors "This is needed for CocList to display highlighting
set background=dark
let g:netrw_liststyle=3
tnoremap <Esc> <C-\><C-n>
set guifont=Cascadia\ Code\ PL:h12

if(exists("$TMUX"))
  let g:clipboard = {
    \   'name': 'myClipboard',
    \   'copy': {
    \      '+': 'tmux load-buffer -',
    \      '*': 'tmux load-buffer -',
    \    },
    \   'paste': {
    \      '+': 'tmux save-buffer -',
    \      '*': 'tmux save-buffer -',
    \   },
    \   'cache_enabled': 1,
    \ }
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions for setting up plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function AddStandard()
  packadd nord-vim
  colorscheme nord 
endfunction

function AddClojure()
  let g:conjure_log_auto_close=v:false
  let g:conjure_log_direction="vertical"
  let g:sexp_filetypes="clojure" 
  let g:conjure#client#scheme#stdio#command="gsi"
  let g:conjure#client#scheme#stdio#prompt_pattern="> "
  packadd conjure 
endfunction

function AddJulia()
  packadd julia-vim
endfunction

function AddOdin()
 au BufRead,BufNewFile *.odin set filetype=odin
endfunction



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add the plugins
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call AddStandard()
call AddClojure()
call AddJulia()
call AddOdin()
