set nocompatible               " Use Vim defaults instead of 100% vi compatibility
filetype off                   " required for vundle!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'fugalh/desert.vim'
Bundle 'javascript.vim'

set backspace=2                 " more powerful backspacing

" syntax
syntax on                       " syntax highlighting
set syntax=enable
" set ai                        " auto indenting

" color
set t_Co=256                    " 256 color
set background=dark
colorscheme desert              " theme

" tab
"set smarttab
set ts=2                        " tab size
set expandtab                   " tab with white space

set history=500                 " keep 500 lines of history
set ruler                       " show the cursor position
set nu                          " show line number

" search
set hlsearch                    " highlight the last searched term
set incsearch                   " fast search

set wrapmargin=80               " set right margin
set guifont=Monaco:h16          " font
set shell=/bin/bash

filetype plugin indent on       " required for vundle

" js support
let javascript_enable_domhtmlcss=1

" nerdtree
nnoremap <silent> <F5> :NERDTree<CR>
