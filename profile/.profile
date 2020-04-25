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

# misc
export EDITOR=nvim
