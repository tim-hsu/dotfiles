filetype plugin on                  " load plugins based on file type
filetype indent on                  " load indent settings based on file type
colorscheme dim                     " this scheme only uses ANSI colors
syntax on                           " enable syntax highlighting

if !has("nvim")
    set nocompatible                " don't emulate vi
endif

set showmatch                       " highlight matching brace
set hlsearch                        " highlight all search results
set ignorecase smartcase            " search case-insensitively unless 
                                    " using uppercase characters
set incsearch                       " search strings incrementally
set number                          " set line number
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
set laststatus=2                    " always show status line
set t_Co=256                        " set if term supports 256 colors
set path+=**                        " Searches current directory recursively

let mapleader="\\"
let maplocalleader="\\"
noremap  <leader>s :setlocal spell!<CR>     " spell check
vnoremap <C-c> "+y :let @+=@*<CR>           " copy into @+ and @*
map      <C-v> "+P                          " paste from @+

" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'                             " comment stuff out
Plug 'tpope/vim-surround'                               " change surrounds
Plug 'itchyny/lightline.vim'                            " lightline status line
Plug 'ajh17/vimcompletesme'                             " light-weight tab-completion
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}   " markdown preview
call plug#end()

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left>  :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up>    :resize +3<CR>
noremap <silent> <C-Down>  :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

