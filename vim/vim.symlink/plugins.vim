filetype off
if empty(glob("~/.vim/autoload/plug.vim"))
   execute '!mkdir -p ~/.vim/autoload && curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'edkolev/tmuxline.vim'

Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'

Plug 'nikvdp/ejs-syntax', {'for': 'ejs'}
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'maksimr/vim-jsbeautify', { 'for': ['javascript', 'html', 'css', 'ejs'] }

call plug#end()
filetype plugin indent on
