set enc=utf-8
set fencs=iso-2022-jp,euc-jp,sjis,cp932,utf-8

set clipboard+=unnamed

"swap files dir
set directory=~/.vim/tmp
"backup files dir
set backupdir=~/.vim/tmp
"no swapfile"
set noswapfile

"show line numbers
set number
"show ruler
set ruler
"highlight the other side of the parenthesis
set showmatch
"autoindent ON
set autoindent

"syntax highlight ON
syntax on

"undo-persistence
set undodir=~/.vim/tmp/.vimundo
set undofile

"show trailing white spaces
set list listchars=trail:*
highlight SpecialKey term=underline ctermbg=red guibg=red

set shiftwidth=2
set tabstop=2
set expandtab

set ignorecase
set smartcase
set incsearch
set hlsearch

set foldmethod=indent
set hidden
set backspace=2

nnoremap <C-Left> :bprev<CR>
nnoremap <C-Right> :bnext<CR>
nnoremap U <ESC>
nnoremap j gj
nnoremap k gk
"toggle among MacVim windows
nnoremap <silent> gw :macaction _cycleWindows:<CR>
nnoremap <silent> gW :macaction _cycleWindowsBackwards:<CR>

inoremap {<CR> {<CR>}<ESC>ko
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap <C-@> <C-[>

augroup html
  autocmd!
  autocmd FileType html inoremap < <><left>
augroup END

vnoremap <C-@> <C-[>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-v> <C-r>*

autocmd BufEnter *.md set filetype=markdown
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"migemo
nnoremap m/ g/

if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim


filetype plugin indent on
syntax enable
