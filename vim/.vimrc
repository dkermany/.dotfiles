set nocompatible              " required
set encoding=utf-8
filetype off                  " required
let python_highlight_all=1
syntax on
set clipboard=unnamed
set nu rnu
set background=dark

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'morhetz/gruvbox'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox

