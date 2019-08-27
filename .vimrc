"         _
" __    _(_)_ __ ___  _ __ ___
" \ \  / / |  _   _ \| '__/ __|
"  \ \/ /| | | | | | | | | (__
"   \__/ |_|_| |_| |_|_|  \___|
" File: vimrc
" Author: Jaehyun Lee <kidsnow0115@gmail.com>
" Date: 2019.08.26
" Last Modified Date: 2019.08.26
" Last Modified By: Jaehyun Lee <kidsnow0115@gmail.com>

set nocompatible    " Prevent Vi IMproved to be turned off.
filetype on         " To enable filetype detection.

set encoding=utf-8
set fileencoding=utf-8

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set number
set cursorline

set hlsearch
set incsearch
set smartcase

set mouse=a
set laststatus=2
set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P

set title
set showcmd
set autoread
set wildmenu
set wildmode=longest:full,full
set nobomb
set nobackup
set noswapfile
set clipboard=unnamed,unnamedplus

set sol

syntax on

set t_Co=256
colorscheme molokai
let g:airline_theme='term'
hi SpecialKey       ctermfg=239
hi Statement        ctermfg=161                     cterm=bold
hi StatusLine       ctermfg=233     ctermbg=251     cterm=none
hi StatusLineNC     ctermfg=242     ctermbg=232
hi Visual                           ctermbg=236
" hi Normal           ctermfg=15      ctermbg=none
hi Normal           ctermfg=15      ctermbg=232
hi Comment          ctermfg=244
hi CursorLine                       ctermbg=236     cterm=none
" hi CursorLine                       ctermbg=238     cterm=none
" hi CursorLineNr     ctermfg=208                     cterm=none
hi CursorLineNr     ctermfg=208     ctermbg=232     cterm=none
hi LineNr           ctermfg=250     ctermbg=232
hi NonText          ctermfg=250     ctermbg=232
