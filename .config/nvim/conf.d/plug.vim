" autoload vim-plug if not exists

if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
endif

call plug#begin("~/.local/share/nvim/plugged")
    Plug 'tomasr/molokai'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'scrooloose/syntastic'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'bling/vim-airline'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
call plug#end()
