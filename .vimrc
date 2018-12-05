colorscheme badwolf
syntax enable
set ff=unix

set nocompatible
set number
set tabstop=4
set noexpandtab
set showcmd
set cursorline
set wildmenu
set showmatch

nnoremap j gj
nnoremap k gk

call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
call plug#end()
