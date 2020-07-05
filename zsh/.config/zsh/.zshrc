# Get colors
autoload -U colors && colors

# History settings
HISTFILE="$HOME"/.local/share/zsh_histfile
HISTSIZE=2000
SAVEHIST=2000

# Use emacs keybindings
bindkey -e

# Shell options
setopt autocd                   # Navigate to directories without ls
setopt appendhistory            # Immediately append history instead of overwriting
setopt histignorealldups        # If a new command is a duplicate, remove the older one

# Case insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# Automatically find new executables in path
zstyle ':completion:*' rehash true
# Don't consider certain characters part of the word
WORDCHARS=${WORDCHARS//\/[&.;]}

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
    zgen load romkatv/powerlevel10k powerlevel10k

    # Generate the init script from plugins above
    zgen save
fi

# Keybindings
bindkey '^[[A'    history-substring-search-up   # up
bindkey '^[[B'    history-substring-search-down # down
bindkey '^[[1;5D' backward-word                 # ctrl-left
bindkey '^[[1;5C' forward-word                  # ctrl-right
bindkey '^[[1;3D' backward-word                 # alt-left
bindkey '^[[1;3C' forward-word                  # alt-right
bindkey '^H'      backward-kill-word            # ctrl-backspace

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f "$ZDOTDIR"/.p10k.zsh ]] || source "$ZDOTDIR"/.p10k.zsh

# Drop into fish (if parent process is not fish)
[[ $(ps -p $PPID -o command | awk 'NR>1') != "fish" ]] && exec fish
