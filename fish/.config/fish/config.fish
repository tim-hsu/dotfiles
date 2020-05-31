# Miniconda
set MINICONDA_PATH "$HOME/ext/miniconda3"
alias conda-start="eval "$MINICONDA_PATH"/bin/conda "shell.fish" "hook" $argv | source"

# Enable colored 'man'
set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

# Aliases
alias fzf-pacman-Si="fzf -m --preview 'pacman -Si {}' --preview-window=70%"
alias fzf-pacman-Qi="fzf -m --preview 'pacman -Qi {}' --preview-window=70%"
