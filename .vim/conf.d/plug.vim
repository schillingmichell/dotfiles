" autoload vim-plug if not exists

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'tomasr/molokai'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
call plug#end()
