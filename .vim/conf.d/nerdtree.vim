" open NerdTREE with vi
autocmd StdinReadPre * let s:std_in=1

" open NerdTREE automatically if no files is opened on startup
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close nerdtree if it's the last open tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" map open/close nerdtree to CTRL + n
map <C-n> :NERDTreeToggle<CR>
