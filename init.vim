call plug#begin()
Plug 'iCyMind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()


" Color Schemes
set termguicolors
set background=light
colorscheme NeoSolarized
let g:airline_theme='molokai'

" Clipboard
set clipboard+=unnamedplus

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

