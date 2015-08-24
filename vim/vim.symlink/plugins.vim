filetype off
if empty(glob("~/.vim/autoload/plug.vim"))
   execute '!mkdir -p ~/.vim/autoload && curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe'

call plug#end()
filetype plugin indent on
