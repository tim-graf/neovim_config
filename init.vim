call plug#begin()
Plug 'iCyMind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'maralla/completor.vim'
Plug 'neomake/neomake'
Plug 'nbouscal/vim-stylish-haskell'
Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'vim-test/vim-test'
Plug 'kassio/neoterm'
call plug#end()

let mapleader = "\<Space>"

" Programming

syntax on
filetype plugin indent on
let test#strategy = "neoterm"

" Color Schemes
set termguicolors
set background=light
colorscheme PaperColor
let g:airline_theme='papercolor'

" Clipboard
set clipboard+=unnamedplus

 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Python
 let g:completor_python_binary = '/usr/bin/python3'
 autocmd BufWritePre *.py execute ':Black'
