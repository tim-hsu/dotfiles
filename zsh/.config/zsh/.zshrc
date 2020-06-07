# Get colors
autoload -U colors && colors

# History settings
HISTFILE="$HOME"/.local/share/zsh_histfile
HISTSIZE=2000
SAVEHIST=2000

# Use emacs keybindings
bindkey -e

# Auto/tab complete
zstyle ':completion:*' menu yes select

# Shell options
setopt autocd                   # Navigate to directories without ls
setopt CORRECT                  # Typo correction
setopt APPEND_HISTORY           # Addition of the history file
setopt HIST_IGNORE_ALL_DUPS     # Ignore all repetitions of commands
setopt HIST_FIND_NO_DUPS        # Do not display the string found earlier
setopt HIST_IGNORE_DUPS         # Ignore rows if they are duplicates
setopt HIST_REDUCE_BLANKS       # Delete empty lines from history file
setopt HIST_IGNORE_SPACE        # Ignore a record starting with a space
setopt HIST_NO_STORE            # Do not add history and fc commands to the history

# Aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias ll="ls -lh"
alias la="ls -la"
alias cp="cp -i"                # Confirm before overwriting
alias df="df -h"                # Human-readable sizes
alias free="free -m"            # Show sizes in MB

# Load zgen
source "$HOME"/ext/zgen/zgen.zsh

# If the init script doesn't exist
if ! zgen saved; then
    # Specify plugins here
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-history-substring-search
    zgen load zsh-users/zsh-completions
    zgen load romkatv/powerlevel10k powerlevel10k

    # Generate the init script from plugins above
    zgen save
fi

# Keybinding
bindkey '^[[A'    history-substring-search-up   # up
bindkey '^[[B'    history-substring-search-down # down
bindkey '^[[1;5D' backward-word                 # ctrl-left
bindkey '^[[1;5C' forward-word                  # ctrl-right

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f "$ZDOTDIR"/.p10k.zsh ]] || source "$ZDOTDIR"/.p10k.zsh
