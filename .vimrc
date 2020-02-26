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

let mapleader=" "

" Configs
let g:EasyMotion_leader_key = '<Leader>'
let g:indent_guides_enable_on_vim_startup = 1
let g:gitgutter_highlight_linenrs = 1
let g:ackprg = "rg --vimgrep"
let g:gutentags_ctags_executable_ruby = 'ripper-tags'
let g:gutentags_ctags_extra_args = ['--ignore-unsupported-options', '--recursive']
" Use :messages to display errors
" let g:gutentags_trace = 1

" fzf and fzf.vim
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" If installed using git
set rtp+=~/.fzf

" lightline
set laststatus=2

" rainbow
let g:rainbow_active = 1

" ctags
set tags=./tags;/,tags;/

" Bindings
map <leader>d :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
map <C-p> :Files<CR>
map ; :Buffers<CR>
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>o <Plug>yankstack_substitute_newer_paste
nmap <C-e> :e#<CR>
map <Leader> <Plug>(easymotion-prefix)
nmap f <Plug>(easymotion-bd-f)
xmap f <Plug>(easymotion-bd-f)
omap f <Plug>(easymotion-bd-f)

" Coc
" if hidden is not set, TextEdit might fail.
set hidden
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" Better display for messages
set cmdheight=2
" You will have bad experience for diagnostic messages when it's default
" 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
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
inoremap <silent><expr> <c-space> coc#refresh()
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
	  execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')
" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand','editor.action.organizeImport')
" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

colorscheme gruvbox

" Load all packages now
packloadall

" Generate help tags from all packages and ignore errors
silent! helptags ALL
