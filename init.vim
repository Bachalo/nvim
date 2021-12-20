let g:airline_theme='minimalist'

syntax on

set mouse=a
set number
set expandtab
set incsearch
set cursorline
set termguicolors

inoremap <C-c> <esc> " Rebind CTRL + C to escape key
nnoremap vs :vs<CR>
nnoremap sp :sp<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>

call plug#begin()
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'tpope/vim-fugitive'
call plug#end()

