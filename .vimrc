filetype plugin indent on
syntax on

set binary
set noeol
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
set nocp
set backspace=indent,eol,start
set redrawtime=10000

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

" Coc
" GoTo code navigation.
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" lightline
set laststatus=2

" vim-qf
let g:qf_shorten_path = 0

" rainbow
let g:rainbow_active = 1

" ctags
set tags=./tags;/,tags;/

" Bindings
map <C-p> :Files<CR>
map ; :Buffers<CR>
nmap <leader>g :Ag!<CR>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>o <Plug>yankstack_substitute_newer_paste
nmap <C-e> :e#<CR>
nnoremap <leader>bd :%bd<CR>
nnoremap <leader>ud :%bd <bar> e#<CR>
map <Leader> <Plug>(easymotion-prefix)
nmap f <Plug>(easymotion-bd-f)
xmap f <Plug>(easymotion-bd-f)
omap f <Plug>(easymotion-bd-f)
nnoremap <leader>l :call VimLensToggle()<cr>
function! VimLensToggle()
    if g:lens#disabled
        let g:lens#disabled = 0
    else
        let g:lens#disabled = 1
    endif
endfunction
cnoreabbrev f Ack!
nnoremap <Leader>f :Ack!<Enter>

colorscheme gruvbox
set background=dark

set completeopt+=menuone,noselect,noinsert
set shortmess+=c   " Shut off completion messages
set belloff+=ctrlg " If Vim beeps during completion
let g:mucomplete#enable_auto_at_startup = 1

" Load all packages now
packloadall

" Generate help tags from all packages and ignore errors
silent! helptags ALL
