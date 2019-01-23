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
Plug 'sjl/gundo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'markcornick/vim-vagrant'
Plug 'saltstack/salt-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

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
set backspace=indent,eol,start
set background=dark
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·,eol:¬
set showbreak=↪\
set modeline
set undofile
set undodir=~/.vim/undo
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
let g:go_list_type = 'quickfix'
let g:syntastic_go_checkers = ['golint', 'govet', 'gometalinter', 'gofmt']
let g:syntastic_go_gometalinter_args = ['--disable-all', '--enable=errcheck']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_enable_balloons = 1
let g:syntastic_mode_map = {
    \ "mode": "passive",
    \ "active_filetypes": [""],
    \ "passive_filetypes": [""] }

let mapleader = ","

nnoremap <leader><space> :nohlsearch<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>c :SyntasticCheck<CR>
nnoremap <leader>r :SyntasticReset<CR>
nnoremap <leader>n :lnext<CR>
nnoremap <leader>N :lprevious<CR>
nnoremap <leader>t :SyntasticToggleMode<CR>
nnoremap <leader>v :vnew<CR>
nnoremap <leader>s :new<CR>
nnoremap <leader>qw :w<CR>:q<CR>
nnoremap <leader>qq :q<CR>
nnoremap <leader>ws :%s/\s\+$//e<CR>
nnoremap tt :tabnew<CR>
nnoremap tn :tabnext<CR>
nnoremap tN :tabprev<CR>
nnoremap tq :tabclose<CR>
nnoremap M `
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>gr :w<CR>:GoRun<CR>
nnoremap O O<ESC>

nnoremap <leader>d :setlocal spell spelllang=en_gb <bar> :hi SpellBad cterm=underline,bold<CR>
nnoremap <leader>D :set nospell <bar> :hi clear SpellBad<CR>

"This autocommand jumps to the last known position in a file
"just after opening it, if the '" mark is set:
au BufReadPost *
\ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
\ |   exe "normal! g`\""
\ | endif

" Automatically resize splits on window resize
autocmd VimResized * wincmd =

" ctrl+p speedups - https://stackoverflow.com/a/22784889
if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_switch_buffer= 'et'
endif

" gundo settings
let g:gundo_playback_delay = 350

" Automatically set width on yml and ruby files.
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab
