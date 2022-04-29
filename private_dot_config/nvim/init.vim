let mapleader = "\<Space>"
let maplocalleader = ","

" ----------------------------
"  Dein
" ----------------------------
let s:dein_config_dir = $XDG_CONFIG_HOME . '/nvim'
let s:dein_cache_dir = $XDG_CACHE_HOME . '/dein'

if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  call dein#load_toml(s:dein_config_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_config_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" ----------------------------
"  Init
" ----------------------------
filetype plugin indent on
syntax enable

" ----------------------------
"  Settings
" ----------------------------
set vb t_vb=
set ignorecase
set noswapfile
set noerrorbells
set nobackup
set encoding=utf-8
set number
set splitbelow
set splitright
set noequalalways
set wildmenu
set ruler
set cursorline
set expandtab
set tabstop=2 softtabstop=0 shiftwidth=2

" ----------------------------
"  Keymap
" ----------------------------
cnoremap init :<C-u>edit $MYVIMRC<CR>
noremap <leader>s :source $MYVIMRC<CR>

vmap <Leader>y "+y
vmap <Leader>p "+p

inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

noremap ; :
noremap : ;

nmap <ESC><ESC> ;nohlsearch<CR><ESC>

noremap  <CR> G
noremap  <BS> gg

noremap <leader>w :w<CR> 
nnoremap <leader>q :q<CR>

noremap L gt
noremap H gT

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd FileType php let b:prettier_ft_default_args = {
  \ 'parser': 'php',
  \ }

" ----------------------------
"  自動読み込み
" ----------------------------
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

" ----------------------------
"  Theme
" ----------------------------
" colorscheme dracula
colorscheme hybrid

" highlight Normal ctermbg=NONE guibg=NONE
" highlight NonText ctermbg=NONE guibg=NONE
" highlight SpecialKey ctermbg=NONE guibg=NONE
" highlight EndOfBuffer ctermbg=NONE guibg=NONE

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsxt mapleader = "\<Space>"
let maplocalleader = ","

" ----------------------------
"  Dein
" ----------------------------
let s:dein_config_dir = $XDG_CONFIG_HOME . '/nvim'
let s:dein_cache_dir = $XDG_CACHE_HOME . '/dein'

if &compatible
  set nocompatible
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)

  call dein#load_toml(s:dein_config_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_config_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" ----------------------------
"  Init
" ----------------------------
filetype plugin indent on
syntax enable

" ----------------------------
"  Settings
" ----------------------------
set vb t_vb=
set ignorecase
set noswapfile
set noerrorbells
set nobackup
set encoding=utf-8
set number
set splitbelow
set splitright
set noequalalways
set wildmenu
set ruler
set cursorline
set expandtab
set tabstop=2 softtabstop=0 shiftwidth=2

" ----------------------------
"  Keymap
" ----------------------------
cnoremap init :<C-u>edit $MYVIMRC<CR>
noremap <leader>s :source $MYVIMRC<CR>

vmap <Leader>y "+y
vmap <Leader>p "+p

inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

noremap ; :
noremap : ;

nmap <ESC><ESC> ;nohlsearch<CR><ESC>

noremap  <CR> G
noremap  <BS> gg

noremap <leader>w :w<CR> 
nnoremap <leader>q :q<CR>

noremap L gt
noremap H gT

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

autocmd FileType php let b:prettier_ft_default_args = {
  \ 'parser': 'php',
  \ }

" ----------------------------
"  自動読み込み
" ----------------------------
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

" ----------------------------
"  Theme
" ----------------------------
" colorscheme dracula
colorscheme hybrid

" highlight Normal ctermbg=NONE guibg=NONE
" highlight NonText ctermbg=NONE guibg=NONE
" highlight SpecialKey ctermbg=NONE guibg=NONE
" highlight EndOfBuffer ctermbg=NONE guibg=NONE

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
