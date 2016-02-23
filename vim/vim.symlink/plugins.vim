filetype off
if empty(glob("~/.vim/autoload/plug.vim"))
   execute '!mkdir -p ~/.vim/autoload && curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'
Plug 'edkolev/tmuxline.vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe', { 'do': 'python2 install.py --clang-completer --omnisharp-completer --gocode-completer --tern-completer --racer-completer' }
Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}
Plug 'scrooloose/syntastic'

Plug 'editorconfig/editorconfig-vim'
Plug 'nikvdp/ejs-syntax', {'for': 'ejs'}
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'maksimr/vim-jsbeautify', { 'do' : 'git submodule update --init --recursive', 'for': ['javascript', 'json', 'jsx', 'html', 'css', 'ejs'] }
Plug 'rhysd/vim-clang-format', { 'for': ['c', 'cpp', 'objc'] }

call plug#end()
filetype plugin indent on
