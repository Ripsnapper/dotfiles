export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export HISTFILE="$XDG_STATE_HOME"/zsh/history

export QT_STYLE_OVERRIDE=kvantum
export QT_QPA_PLATFORM=wayland
export CARGO_HOME=$XDG_DATA_HOME/cargo
export OPAMROOT=$XDG_DATA_HOME/opam
export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc
export GNUPGHOME=$XDG_DATA_HOME/gnupg
export PYTHONSTARTUP=$XDG_CONFIG_HOME/python/startup.py

export EDITOR=vim
