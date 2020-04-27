#
# ~/.profile
#

# XDG specs
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

# attempt XDG compliance
export LESSHISTFILE=-
export ATOM_HOME="$XDG_DATA_HOME"/atom
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc-2.0
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

# add julia path
export PATH="$PATH:$HOME/ext/julia-1.4.0/bin"

# fzf customization
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 50% --layout=reverse --border'
