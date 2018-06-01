"{{{ includes
source ~/.config/nvim/conf.d/plug.vim
"source $HOME/.config/nvim/conf.d/nerdtree.vim

"}}}

"{{{ auto command
" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Restore cursor position to where it was before
augroup JumpCursorOnEdit
   au!
   autocmd BufReadPost *
            \ if expand("<afile>:p:h") !=? $TEMP |
            \   if line("'\"") > 1 && line("'\"") <= line("$") |
            \     let JumpCursorOnEdit_foo = line("'\"") |
            \     let b:doopenfold = 1 |
            \     if (foldlevel(JumpCursorOnEdit_foo) > foldlevel(JumpCursorOnEdit_foo - 1)) |
            \        let JumpCursorOnEdit_foo = JumpCursorOnEdit_foo - 1 |
            \        let b:doopenfold = 2 |
            \     endif |
            \     exe JumpCursorOnEdit_foo |
            \   endif |
            \ endif
   " Need to postpone using "zv" until after reading the modelines.
   autocmd BufWinEnter *
            \ if exists("b:doopenfold") |
            \   exe "normal zv" |
            \   if(b:doopenfold > 1) |
            \       exe  "+".1 |
            \   endif |
            \   unlet b:doopenfold |
            \ endif
augroup END
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
set nopaste

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

" enable folding
set foldmethod=marker
"}}}

"{{{ key mappings
" map CTRL+SHIFT+C to 'copy'
nnoremap <C-S-c>         "+y

" map CTRL+SHIFT+V to 'paste'
nnoremap <C-S-v>         "+p

" use space to toggle fold
nnoremap <space>        za
"}}}

