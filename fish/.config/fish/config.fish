# Miniconda
set MINICONDA_PATH "$HOME/ext/miniconda3"
alias conda-start="eval "$MINICONDA_PATH"/bin/conda "shell.fish" "hook" $argv | source"

# Aliases
alias fzf-pacman-Si="fzf -m --preview 'pacman -Si {}' --preview-window=70%"
alias fzf-pacman-Qi="fzf -m --preview 'pacman -Qi {}' --preview-window=70%"

# Starship prompt
starship init fish | source
