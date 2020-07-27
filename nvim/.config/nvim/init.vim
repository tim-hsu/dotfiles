" Define leader key
let g:mapleader = "\<Space>"

filetype plugin on                  " Load plugins based on file type
filetype indent on                  " Load indent settings based on file type
syntax enable                       " Enable syntax highlighting
colorscheme dim                     " This scheme only uses ANSI colors and
                                    " should match the terminal colors

set nocompatible                    " Don't emulate vi
set nowrap                          " No line wrapping
set hidden                          " Required to keep multiple buffers open
set noswapfile                      " No need for swapfiles
set mouse=a                         " Enable mouse support
set showmatch                       " Highlight matching brace
set hlsearch                        " Highlight all search results
set ignorecase                      " Search case insensitively
set incsearch                       " Search strings incrementally
set number                          " Set line number
set backspace=indent,eol,start      " Proper backspace behavior
set autoindent                      " Copy indent from previous line
set ruler                           " Show row and column information
set showcmd                         " Show current command in status line
set splitbelow splitright           " Split to below and right 
set wildmode=longest,list,full      " Configure autocompletion
set tabstop=4                       " Show tabs as 4 spaces
set softtabstop=4                   " Number of spaces for inserting a tab
set shiftwidth=4                    " Number of spaces for indenting 
set expandtab                       " Convert tabs into spaces
set clipboard+=unnamedplus          " Use system clipboard

" Source the configs related to plugins
source $HOME/.config/nvim/plugins.vim

" Toggle hlsearch
noremap <leader>h :set hlsearch!<CR>

" Toggle spell check
noremap <leader>s :setlocal spell!<CR>

" Copy into @+ and paste from @+
vnoremap <C-c> "+y<CR>
map      <C-p> "+P

" Replace all
nnoremap S :%s//g<Left><Left>

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting split sizes a bit more friendly
noremap <silent> <C-Left>  :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up>    :resize +3<CR>
noremap <silent> <C-Down>  :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Tab and Shift-Tab for switch to buffer
nnoremap <TAB>   :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv
