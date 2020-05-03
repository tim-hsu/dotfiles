# miniconda
set MINICONDA_PATH "$HOME/ext/miniconda3"
if test -d $MINICONDA_PATH
    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    eval "$MINICONDA_PATH"/bin/conda "shell.fish" "hook" $argv | source
    # <<< conda initialize <<<
end

# enable colored 'man'
set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

# aliases
alias fzf-pacman="fzf --preview 'pacman -Si {}'"
