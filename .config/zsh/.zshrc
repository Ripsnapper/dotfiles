autoload -Uz compinit; compinit -d $XDG_CACHE_HOME/.zcompdump
autoload -Uz promptinit; promptinit

source "$HOME/.local/share/miniplug.zsh"
source "$ZDOTDIR/miniplug_omz_extension.zsh"

omz_plugin 'lib/completion.zsh'
omz_plugin 'lib/directories.zsh'
omz_plugin 'lib/history.zsh'
omz_plugin 'lib/key-bindings.zsh'
omz_plugin 'plugins/fzf'
omz_plugin 'plugins/git'

#miniplug theme 'm-lima/simpalt'
#miniplug plugin 'agkozak/agkozak-zsh-prompt'
miniplug theme 'spaceship-prompt/spaceship-prompt'

miniplug plugin 'zsh-users/zsh-syntax-highlighting'
miniplug plugin 'zsh-users/zsh-autosuggestions'

miniplug load

export HISTSIZE=100000
export SAVEHIST=100000
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# HOTKEYS
bindkey "^R" fzf-history-widget

eval $(dircolors -b)
alias ls="ls --color"

# ALIASES
alias vim=nvim

# Keep wget from cluttering $HOME
alias wget=wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"
