#
# ~/.profile
#

export EDITOR=nvim
export VISUAL=nvim
export BROWSER=brave
export PAGER=less

# Enable colored 'man'
export LESS_TERMCAP_md=$'\e[01;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[01;32m'

# XDG specs
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

# Attempt XDG compliance
export LESSHISTFILE=-
export IPYTHONDIR="$XDG_CONFIG_HOME"/jupyter
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export KDEHOME="$XDG_CONFIG_HOME"/kde
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

# Add julia path
export PATH="$PATH:$HOME/ext/julia-1.4.0/bin"

# fzf customization
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 70% --layout=reverse --border'

# Key autorepeat speed
[ $(command -v xset) ] && xset r rate 300 40
