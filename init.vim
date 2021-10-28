syntax on

set exrc
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

set cmdheight=2

set updatetime=50

set colorcolumn=80

call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'mbbill/undotree'
Plug 'nvim-lua/completion-nvim'
Plug 'hrsh7th/nvim-compe'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ojroques/nvim-lspfuzzy'

Plug 'L3MON4D3/LuaSnip'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
" Plug  'SirVer/ultisnips'
 "Plug 'honza/vim-snippets'
 "Plug 'mlaursen/vim-react-snippets'

Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
set completeopt=menuone,noselect

let mapleader=' '

lua require('init')
"lua ls=require('luasnip')

imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
inoremap <silent> <S-Tab> <cmd>lua ls.jump(-1)<Cr>

imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : ''
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : ''

imap <silent><expr> <C-T> luasnip#choice_active() ? '<Plug>luasnip-prev-choice' : ''
smap <silent><expr> <C-T> luasnip#choice_active() ? '<Plug>luasnip-prev-choice' : ''

snoremap <silent> <Tab> <cmd>lua ls.jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua ls.jump(-1)<Cr>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>bd :LspDiagnosticsAll<CR>
nnoremap <leader>hh :cd %<CR>
nnoremap <leader>rc :edit ~/.config/nvim/init.vim<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>tr :vertical resize -200<CR>
nnoremap <leader>tl :vertical resize 200<CR>
nnoremap <leader>tt :vertical resize 100<CR>

