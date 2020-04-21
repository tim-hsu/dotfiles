filetype plugin on                  " load plugins based on file type
filetype indent on                  " load indent settings based on file type
syntax on                           " enable syntax highlighting

if !has("nvim")
    set nocompatible                " don't emulate vi
endif

set showmatch                       " highlight matching brace
set hlsearch                        " highlight all search results
set ignorecase smartcase            " search case-insensitively unless 
                                    " using uppercase characters
set incsearch                       " search strings incrementally
set relativenumber                  " set line number
set backspace=indent,eol,start      " proper backspace behavior
set autoindent                      " copy indent from previous line
set ruler                           " show row and column information
set showcmd                         " show current command in status line
set splitbelow splitright           " split to below and right 
set wildmenu                        " command-line completion
set wildmode=longest:list,full      " configure wildmenu
set tabstop=4                       " show tabs as 4 spaces
set softtabstop=4                   " number of spaces for inserting a tab
set shiftwidth=4                    " number of spaces for indenting 
set expandtab                       " convert tabs into spaces
set smarttab                        " cursor stays put during Ctrl+u, Ctlr+d
set laststatus=2

let mapleader="\\"
let maplocalleader="\\"
noremap <leader>s : setlocal spell!<CR>

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'ajh17/vimcompletesme'
call plug#end()
