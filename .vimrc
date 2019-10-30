set number
filetype plugin indent on
syntax on
set hlsearch
set runtimepath^=~/.vim/pack/default/start/ctrlp.vim
set noswapfile
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set cursorcolumn
set cursorline

let mapleader=" "
let g:EasyMotion_leader_key = '<Leader>'

" fzf and fzf.vim
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git
set rtp+=~/.fzf

map <C-n> :NERDTreeToggle<CR>

colorscheme gruvbox

" Load all packages now
packloadall
" Generate help tags from all packages and ignore errors
silent! helptags ALL
