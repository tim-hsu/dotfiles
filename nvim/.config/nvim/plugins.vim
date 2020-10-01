if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
                \ > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif

" Plugins (vim-plug)
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'tpope/vim-commentary'             " Comment stuff out
Plug 'tpope/vim-fugitive'               " Git integration
Plug 'tpope/vim-surround'               " Change surrounds
Plug 'itchyny/lightline.vim'            " Lightline status line
Plug 'preservim/nerdtree'               " Tree explore plugin
Plug 'junegunn/fzf'                     " Find fzf executable for vim
Plug 'junegunn/fzf.vim'                 " Additional fzf functionality
Plug 'junegunn/goyo.vim'                " Distraction-free viewing
Plug 'kovetskiy/sxhkd-vim'              " Highlighting for sxhkd
Plug 'arcticicestudio/nord-vim'         " Nord colorscheme
Plug 'neoclide/coc.nvim', {'branch':'release'}
call plug#end()

" Source coc settings
source ~/.config/nvim/coc.vim

" Colorscheme
colorscheme nord

" NERD tree settings
map <leader>n :NERDTreeToggle<CR>
let g:NERDTreeShowHidden = 1

" Toggle goyo mode
map <leader>z :Goyo<CR>

" fzf settings
nnoremap <A-f> :Files<CR>
nnoremap <A-g> :GFiles<CR>
nnoremap <A-b> :Buffers<CR>
let g:fzf_preview_window = 'right:60%'

" Vim-fugitive keybindings
nmap <leader>gs :Git<CR>
