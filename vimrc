" Use Vim defaults instead of 100% vi compatibility
set nocompatible

" --- vundle -------------------------------------------------------------------

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" syntax
Bundle 'filetype.vim'
Bundle 'vim-scripts/nginx.vim'
Bundle 'apachelogs.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'jade.vim'
Bundle 'Sass'

" theme
Bundle 'ben-lin/sunburst.vim'
colorscheme sunburst

" others
Bundle 'The-NERD-tree'
Bundle 'filetype.vim'

filetype plugin indent on

" --- vundle -------------------------------------------------------------------

" syntax
syntax on                       " syntax highlighting
set syntax=enable
set ai                          " auto indenting
set ci                          " copy the previous indentation on autoindenting
set list                        " highlight whitespaces
set paste
set showmatch                   " show matching bracket

" color
set t_Co=256                    " 256 color
set background=dark

" tab
set smarttab
set ts=2                        " tab size
set expandtab                   " tab with white space

" search
set hlsearch                    " highlight the last searched term
set incsearch                   " fast search
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase

" others
set backspace=2                 " more powerful backspacing
set wrapmargin=80               " set right margin
" set guifont=Monaco:h16          " font
set hidden                      " hides buffers when they are abandoned
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set ruler                       " show the cursor position
set nu                          " show line number
set shell=/bin/bash
set nobackup
set noswapfile

" js html indentation
let g:html_indent_inctags = 'html,body,head,tbody'
let g:html_indent_script1 = 'inc'
let g:html_indent_style1 = 'inc'

" json syntax hightlight
autocmd BufNewFile,BufRead *.json set ft=javascript

" nerdtree
nnoremap <silent> <F5> :NERDTree<CR>

" automatically remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e