" enabling filetype support provides filetype-specific indenting, syntax
" highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on

set nocompatible			" enter the current millennium
set showmatch				" highlight matching brace
set hlsearch				" highlight all search results
set smartcase				" enable smart-case search
set ignorecase				" always case-insensitive
set incsearch				" search strings incrementally
set number				" set line number
set backspace=indent,eol,start		" proper backspace behavior
set autoindent				" minimal auto indenting for any filetype
set smarttab				" cursor stays put during Ctrl+u, Ctlr+d
set ruler				" show row and column information
set wildmenu				" command-line completion
set wildmode=longest:list,full		" configure wildmenu
set tabstop=4
set shiftwidth=4
set expandtab

let mapleader="\\"
let maplocalleader="\\"
noremap <leader>s : setlocal spell!<CR>
