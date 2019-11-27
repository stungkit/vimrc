filetype plugin indent on
syntax on

set number
set hlsearch
set noswapfile
set autoindent
set smartindent
set autoread
" shows minimum number of lines above and below cursor
set scrolloff=10
" reload when entering the buffer or gaining focus
au FocusGained,BufEnter * :silent! !
" save when exiting the buffer or losing focus
au FocusLost,WinLeave * :silent! w
set ignorecase
set spell spelllang=en_us

let mapleader=" "

" Configs
let g:EasyMotion_leader_key = '<Leader>'
let g:indent_guides_enable_on_vim_startup = 1
let g:gitgutter_highlight_linenrs = 1
let g:ackprg = "rg --vimgrep"

" fzf and fzf.vim
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git
set rtp+=~/.fzf

" lightline
set laststatus=2

" rainbow
let g:rainbow_active = 1

" Bindings
map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
map <C-l> :Buffers<CR>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

colorscheme gruvbox

" Load all packages now
packloadall
" Generate help tags from all packages and ignore errors
silent! helptags ALL
