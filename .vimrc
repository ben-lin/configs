set nocompatible               " Use Vim defaults instead of 100% vi compatibility

" --- vundle -------------------------------------------------------------------

" required for vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" bundle management
Bundle 'gmarik/vundle'

" syntax
Bundle 'filetype.vim'
Bundle 'Enhanced-Javascript-syntax'
Bundle 'vim-scripts/nginx.vim'

" theme
Bundle 'twilight256.vim'
Bundle 'tangphillip/SunburstVIM'
colorscheme sunburst

" others
Bundle 'scrooloose/nerdtree'
Bundle 'filetype.vim'

" required for vundle
filetype plugin indent on

" --- vundle -------------------------------------------------------------------

" syntax
syntax on                       " syntax highlighting
set list                        " show special character
set syntax=enable
set ai                          " auto indenting
" set paste

" color
set t_Co=256                    " 256 color
set background=dark

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

" others
set backspace=2                 " more powerful backspacing
set wrapmargin=80               " set right margin
set guifont=Monaco:h16          " font
set shell=/bin/bash

" js support
let javascript_enable_domhtmlcss=1

" json syntax hightlight
autocmd BufNewFile,BufRead *.json set ft=javascript

" nerdtree
nnoremap <silent> <F5> :NERDTree<CR>

" automatically remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e