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

"_______________________________________________________________________________________________
" vim-plug settings:
        call plug#begin('~/.vim/plugged')
        " Autoformat
        Plug 'Chiel92/vim-autoformat'
        " CUDA syntax
        Plug 'bfrg/vim-cuda-syntax'
        " Autocomplete
        " 1. Go to .vim/plugged/YouCompleteMe and execute following cmd.
        " 'python3 ./install.py --clang-completer'
        " 2. Copy .vim/plugged/YouCompleteMe/.ycm_extra_conf.py
        "    to the root of your source code.
        Plug 'ycm-core/YouCompleteMe'
        call plug#end()
"_______________________________________________________________________________________________
" Some basics:
        set nocompatible                                        " Prevent Vi IMproved to be turned off.
        filetype plugin on                                      " To enable filetype detection.
        syntax on                                               " Syntax highliting.
        set encoding=utf-8                                      " Character encoding used inside vim.
        set number                                              " Show line number.
        set hlsearch                                            " Highlight result.
        set incsearch                                           " Show result as search proceeds.
        set ignorecase                                          " Search case insensitive.
        set smartcase                                           " Search case sensitive if any caps used.
        set tabstop=4                                           " # of spaces that a <Tab> in the file counts for.
        set softtabstop=4                                       " # of spaces that a <Tab> counts for while performing editing ops.
        set shiftwidth=4                                        " # of spaces to use for each step of (auto)indent.
        set expandtab                                           " In insert mode, use appropriate # of spaces to insert a <Tab>.
        set cursorline                                          " Highlight current line.
        set backspace=indent,eol,start                          " Allow backspacing over autoindent/line breaks/start of insert.
        set mouse=a                                             " Enable mouse with almost every feature.
        set laststatus=2                                        " Always show status bar.
        set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P      " Format of status bar.
        set title                                               " Display the name of current file on title bar.
        set showcmd                                             " Show command in the last line of the screen.
        set autoread                                            " When a file has been detected to have been changed outside of Vim, automatically read it again.
        let mapleader="\\"                                      " Set leader key.
        set sol                                                 " Move cursor to the start of line.
        set noswapfile                                          " Prevent creating swap file.
        set nobackup                                            " Do not keep a backup file.
        set nobomb                                              " No byte order marker.
        set t_Co=256                                            " Enable 256 colors in vim.
        set clipboard=unnamed,unnamedplus                       " Gotta figure out.
        set wildmenu                                            " Gotta figure out.
        set wildmode=longest:full,full                          " Gotta figure out.
"_______________________________________________________________________________________________
" Color settings
        " let g:jellybeans_overrides = {
        " \   'background': { '256ctermbg': '234' },
        " \   'CursorLine': { 'guibg': '333333' },
        " \}
        " colorscheme jellybeans
        colorscheme dracula
"_______________________________________________________________________________________________
" Comment settings.
        let t:Comment="#"
        let t:Uncomment="#"
        let t:CommentEnd=''
        let t:UncommentEnd=''
        let t:textw=80
        let t:Space=" "
        
        augroup AutoComment
        	au!
        	au FileType c,cpp,verilog,php,javascript,html,idl,opencl,cu,css,hlsl,glsl
        				\ let t:Comment='//'    |
        				\ let t:Uncomment='\/\/'
        	au FileType asm,sh,python,bash,ruby,perl
        				\ let t:Comment='#'     |
        				\ let t:Uncomment='#'
        	au FileType tex,matlab
        				\ let t:Comment='%'     |
        				\ let t:Uncomment='%'   
        	au FileType bib
        				\ let t:Comment='%'     |
        				\ let t:Uncomment='%'   |
        				\ let t:Space=""
        	au FileType vim
        				\ let t:Comment='"'     |
        				\ let t:Uncomment='"'
        	au FileType ini,llvm
        				\ let t:Comment=';'     |
        				\ let t:Uncomment=';'   
        augroup END
        
        noremap <silent>    <leader>\   :call CommentToggle()<CR>
        function! CommentToggle()
        	if getline(".") =~ '^\s*'.t:Uncomment.t:Space
        		exe ":norm ^".strlen(t:Comment.t:Space)."x"
        	elseif getline(".") =~ '^\s*'.t:Uncomment.t:Uncomment
        		" nothing
        	elseif (strlen(getline(".")) > 0)
        		exe ":norm^i".t:Comment.t:Space
        	endif
        endfunction
