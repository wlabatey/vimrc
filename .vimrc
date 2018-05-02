if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
Plug 'markcornick/vim-vagrant'
Plug 'saltstack/salt-vim'

set laststatus=2
call plug#end()
filetype plugin indent on

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

let mapleader = ","
nnoremap <leader><space> :nohlsearch<CR>
map <C-n> :NERDTreeToggle<CR>

let g:solarized_termcolors=256
set backspace=indent,eol,start
set background=dark
colorscheme solarized
syntax enable

" YouCompleteMe Options
let g:ycm_python_binary_path = '/usr/bin/python3'
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" Syntastic Options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_enable_balloons = 1
let g:syntastic_mode_map = { 
    \ "mode": "passive",
    \ "active_filetypes": [""],
    \ "passive_filetypes": [""] }

nmap <leader>s :SyntasticCheck<CR>
nmap <leader>r :SyntasticReset<CR>
nmap <leader>n :lnext<CR>
nmap <leader>N :lprevious<CR>
nmap <leader>t :SyntasticToggleMode<CR>
