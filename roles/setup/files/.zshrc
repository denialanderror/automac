source $HOME/.zsh_plugins
source $HOME/.zsh_aliases

# load zsh completions
fpath=(~/.zsh/completion $fpath)
autoload -U compinit && compinit

# history configuration
HISTSIZE=10000
HISTFILE=$HOME/.zsh_history
SAVEHIST=10000
setopt APPEND_HISTORY SHARE_HISTORY INC_APPEND_HISTORY HIST_FIND_NO_DUPS

# set dirs history and navigation
setopt AUTO_CD PUSHD_IGNORE_DUPS

# terminal/editor configuration
export VISUAL=vim
export EDITOR="$VISUAL"
bindkey "[3~" delete-char

# navi shell widget
source "$(navi widget zsh)"

eval $(thefuck --alias)

autoload -U promptinit; promptinit
prompt pure
