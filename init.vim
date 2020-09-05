syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
call plug#begin('~/.vim/plugged')

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'mattn/emmet-vim'

call plug#end()

colorscheme gruvbox
set background=dark
let mapleader=" "
"emmet-config
let g:user_emmet_leader_key=','

nnoremap  <leader>nn :wincmd v<CR>
nnoremap  <leader>h :wincmd h<CR>
nnoremap  <leader>j :wincmd j<CR>
nnoremap  <leader>l :wincmd l<CR>
nnoremap  <leader>k :wincmd k<CR>
nnoremap  <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap  <leader>pn :wincmd v<bar> :Ex <bar> :vertical resize 50<CR>

inoremap ' ''<left>
inoremap " ""<left>
"inoremap < \<><left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap {;<CR> {<CR>}<ESC>o<TAB>

