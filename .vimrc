call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'

set laststatus=2

call plug#end()

filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
let mapleader = ","
nnoremap <leader><space> :nohlsearch<CR>

syntax enable 
set number
