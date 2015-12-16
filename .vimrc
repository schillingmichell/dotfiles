"{{{ includes
" load config for vim-plug plugin
source ~/.vim/conf.d/plug.vim

" load config for nerdtree plugin
source ~/.vim/conf.d/nerdtree.vim
"}}}

"{{{ look and feel
" set vim to 256 color mode
let &t_Co           = 256
let g:rehash256     = 1

" enable syntax highlighting
syntax on

" recognize filetype when opened or edited
filetype on

" load plugin for recognized filetyp if exists
filetype plugin on

" set colorscheme
color molokai

" show line numbers
set number

" enable vim-airline set symbols
let g:airline_powerline_fonts = 1
"}}}

"{{{ misc settings
" disable compatibility to vi to enable features
set nocompatible

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

" prevent autointendation when pasting
set paste

" add mouse support in all modes
set mouse=a

" two lines for statusbar
set laststatus=2

" add backspace support
set backspace=2

" ignore case
set ignorecase

" if a pattern contains upper case, it's case sensitive
set smartcase

" enhanced command-line completion.
set wildmenu

" set mode for wildmenu
set wildmode=list:longest,full

" enabel incremental seach
set incsearch

" highlight search matches
set hlsearch

" close the buffer if a tabl is closed
set nohidden


"}}}

"{{{ key mappings
" map CTRL+SHIFT+C to 'copy'
map <C-S-c>         "+y

" map CTRL+SHIFT+V to 'paste'
map <C-S-v>         "+p
"}}}

