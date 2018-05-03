filetype indent on

set laststatus=2
set encoding=utf-8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set autoindent
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
set backspace=indent,eol,start
set background=dark

syntax on
colorscheme default

let mapleader = ","

noremap <leader><space> :nohlsearch<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>v :vnew<CR>
nnoremap <leader>s :new<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>qw :w<CR>:q<CR>
nnoremap <leader>qq :q<CR>
