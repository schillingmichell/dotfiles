" disable compatibility to vi to enable features
set nocompatible

"{{{ includes
" load config for vim-plug plugin
source ~/.vim/conf.d/plug.vim
"}}}

"{{{ 
" always uses spaces instead of tab characters
set expandtab

" set tab size to 4
let vTabSize        = 4

let &shiftwidth     = vTabSize
let &softtabstop    = vTabSize
let &tabstop        = vTabSize

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
let &softtabstop    = vTabSize

" make <BS> delete tabwidth at line beginning
set smarttab

" use indentation of previous line
set autoindent

" actually i don't know
set smartindent

" set vim to 256 color mode
let &t_Co           = 256
let g:rehash256     = 1

" set colorscheme
syntax on
color molokai

" show line numbers
set number

" prevent autointendation when pasting
set paste

" add mouse support
set mouse=a


"{{{ key mappings
" map CTRL+SHIFT+C to 'copy'
map <C-S-c>         "+y

" map CTRL+SHIFT+V to 'paste'
map <C-S-v>         "+p
"}}}

