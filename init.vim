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
        Plug 'kyazdani42/nvim-web-devicons' " for file icons
        Plug 'kyazdani42/nvim-tree.lua'
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
"nnoremap <C-n> :Ntree<CR>
nnoremap vs :vs<CR>
nnoremap sp :sp<CR>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
