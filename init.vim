"  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓    ▄████▄   ▒█████   ███▄    █  ██▓  █████▒ ▄████ 
"  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒   ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██▒▓██   ▒ ██▒ ▀█▒
" ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░   ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒██▒▒████ ░▒██░▄▄▄░
" ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██    ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░██░░▓█▒  ░░▓█  ██▓
" ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒   ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░██░░▒█░   ░▒▓███▀▒
" ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░   ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ░▓   ▒ ░    ░▒   ▒ 
" ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░     ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ▒ ░ ░       ░   ░ 
"    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░      ░        ░ ░ ░ ▒     ░   ░ ░  ▒ ░ ░ ░   ░ ░   ░ 
"          ░    ░  ░    ░ ░        ░   ░         ░      ░ ░          ░ ░           ░  ░               ░ 
"                                 ░                     ░                                               


" My (minimalistic) neovim config.
" Its mainly about the coc and autocompletion

" Prerequisites:
" - Neovim
" - Whichever Nerd font for icons and other stuff.
" - vim-plug

"                               
" PLUGINS
"
call plug#begin(stdpath('config').'/plugged')
        Plug 'ayu-theme/ayu-vim'
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        Plug 'luochen1990/rainbow'
        Plug 'norcalli/nvim-colorizer.lua'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'tpope/vim-fugitive'
        Plug 'airblade/vim-gitgutter'
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

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use <cr> to select first autocompletion.
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

syntax on
set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set expandtab
set tabstop=2
set shiftwidth=2
set cursorline
set mouse=a
set number

" Natural window splitting
set splitbelow
set splitright

set termguicolors
let ayucolor="dark"
colorscheme ayu 

" Overwrites colorscheme background color to be transparent.
highlight Normal guibg=NONE ctermbg=NONE

"
" KEYBINDS
"

" leaders
let g:mapleader = " "
let g:maplocalleader = ','

inoremap <C-c> <esc> " Rebind CTRL + C to escape key
nnoremap <C-n> :Ntree<CR>
nnoremap vs :vs<CR>
nnoremap sp :sp<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>

"
" PLUGIN SPECIFIC CONFIGURATION
"

