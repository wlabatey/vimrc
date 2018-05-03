if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'

call plug#end()

filetype plugin indent on

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
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬

colorscheme solarized
syntax enable

let mapleader = ","

noremap <leader><space> :nohlsearch<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>v :vnew<CR>
nnoremap <leader>s :new<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>qw :w<CR>:q<CR>
nnoremap <leader>qq :q<CR>
