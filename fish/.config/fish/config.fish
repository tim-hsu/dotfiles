# Miniconda
set MINICONDA_PATH "$HOME/ext/miniconda3"
alias conda-start="eval "$MINICONDA_PATH"/bin/conda "shell.fish" "hook" $argv | source"

# Enable fzf optional keybindings
test (command -v fzf) && fzf_key_bindings

# Starship prompt
starship init fish | source
