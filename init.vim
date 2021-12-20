"
" PLUGINS
"
call plug#begin()
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'ayu-theme/ayu-vim'
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
        Plug 'luochen1990/rainbow'
call plug#end()

let g:airline_theme='minimalist'
let g:rainbow_active = 1

"
" SETTINGS FOR COC
"
set encoding=utf-8
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c


syntax on
set mouse=a
set number
set expandtab
set tabstop=2
set shiftwidth=2
set incsearch
set cursorline

set termguicolors
let ayucolor="dark"
colorscheme ayu 

"
" KEYBINDS
"
inoremap <C-c> <esc> " Rebind CTRL + C to escape key
nnoremap vs :vs<CR>
nnoremap sp :sp<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
