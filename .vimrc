set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized' " Colour scheme
Plugin 'tpope/vim-surround' " Easy bracketing / quoting
Plugin 'tpope/vim-commentary' " Easy commenting
Plugin 'kien/ctrlp.vim' " Fuzzy file finder
Plugin 'scrooloose/nerdtree' " File tree
Plugin 'bling/vim-airline' " Status bar
Plugin 'scrooloose/syntastic' " Syntax checking

call vundle#end()
filetype plugin indent on

syntax enable
set encoding=utf-8
set background=dark
set smartindent
set smarttab
set ruler
set colorcolumn=100
set softtabstop=2
set tabstop=2
set shiftwidth=2
set scrolloff=5       " 5 lines around the cursor
set number            " Line numbers
set autoread
set expandtab
set cul
set showmatch
set autoread          " Load file changes

" Colours
set t_Co=256
set background=dark
colorscheme solarized

" Airline
set laststatus=2
set noshowmode
let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline#extensions#tabline#enabled = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:statline_syntastic = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
