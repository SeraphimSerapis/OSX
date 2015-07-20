set nocompatible
filetype off

set laststatus=2
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set ruler

set undolevels=1000
set backspace=indent,eol,start

set autoread
set encoding=utf-8
set background=dark
colorscheme solarized
syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'

call vundle#end()

let g:solarized_termcolors=256
let g:airline_theme='solarized'

" tagbar toggle
nmap <F8> :TagbarToggle<CR>

filetype plugin indent on
