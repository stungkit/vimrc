filetype plugin indent on
syntax on

set number
set hlsearch
set noswapfile
set autoindent
set smartindent
set autoread
set ignorecase

let mapleader=" "

" Configs
let g:EasyMotion_leader_key = '<Leader>'
let g:indent_guides_enable_on_vim_startup = 1
let g:gitgutter_highlight_lines = 1
let g:gitgutter_highlight_linenrs = 1

" fzf and fzf.vim
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git
set rtp+=~/.fzf

" lightline
set laststatus=2

" Bindings
map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>

colorscheme gruvbox

" Load all packages now
packloadall
" Generate help tags from all packages and ignore errors
silent! helptags ALL
