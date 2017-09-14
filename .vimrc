call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
Plug 'nathanaelkane/vim-indent-guides'

set laststatus=2
call plug#end()
filetype plugin indent on

" See link for info -> https://dougblack.io/words/a-good-vimrc.html

set tabstop=2
set softtabstop=2
set shiftwidth=2
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
map <C-n> :NERDTreeToggle<CR>

let g:solarized_termcolors=256
set backspace=indent,eol,start
set background=dark
colorscheme solarized
syntax enable 
set number

set ts=2 sw=2 et
let g:indent_guides_start_level=3
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1
