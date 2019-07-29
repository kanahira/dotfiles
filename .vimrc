set encoding=UTF-8 
 
set number 
 
set expandtab 
set shiftwidth=2 
set softtabstop=2 
 
set hlsearch 
 
colorscheme koehler 
 
 
call plug#begin('~/.vim/plugged') 
Plug 'scrooloose/nerdtree' 
Plug 'ryanoasis/vim-devicons' 
Plug 'leafgarland/typescript-vim' 
Plug 'prettier/vim-prettier', { 'do': 'yarn install' } 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'Quramy/tsuquyomi' 
Plug 'hail2u/vim-css3-syntax' 
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } 
Plug 'tpope/vim-fugitive' 
Plug 'tpope/vim-surround' 
Plug 'tomtom/tcomment_vim' 
call plug#end() 
 
let g:WebDevIconsUnicodeDecorateFolderNodes = 1 
 
set t_Co=256 
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1 
let g:airline_theme='papercolor' 
 
" config key map for tsuquyomi 
imap <C-f> <C-x><C-o> 
map <C-@> <Plug>(TsuquyomiReferences) 
 
autocmd StdinReadPre * let s:std_in=1 
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif 

