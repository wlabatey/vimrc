call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
Plug 'markcornick/vim-vagrant'
Plug 'saltstack/salt-vim'

set laststatus=2
call plug#end()
filetype plugin indent on

" See link for info -> https://dougblack.io/words/a-good-vimrc.html

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
set number
set clipboard+=unnamed
set nobackup
set noswapfile

let mapleader = ","
nnoremap <leader><space> :nohlsearch<CR>
map <C-n> :NERDTreeToggle<CR>

let g:solarized_termcolors=256
set backspace=indent,eol,start
set background=dark
colorscheme solarized
syntax enable
