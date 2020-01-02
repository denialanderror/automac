source $HOME/.zsh_plugins
source $HOME/.zsh_aliases

# load zsh completions
autoload -U compinit && compinit

# dotfile management
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# history configuration
HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
SAVEHIST=5000
setopt APPEND_HISTORY SHARE_HISTORY INC_APPEND_HISTORY HIST_FIND_NO_DUPS

# set dirs history and navigation
setopt AUTO_CD PUSHD_IGNORE_DUPS
zstyle :plugin:history-search-multi-word reset-prompt-protect 1

# terminal/editor configuration
export VISUAL=vim
export EDITOR="$VISUAL"
bindkey "[3~" delete-char
bindkey "^R" history-search-multi-word
set -o vi
bindkey -v

# Spaceship prompt configuration
SPACESHIP_TIME_SHOW=true
SPACESHIP_PROMPT_ORDER=(
  time user dir host git 
  package node xcode golang rust docker aws venv pyenv kubecontext terraform 
  exec_time line_sep
  jobs exit_code char
)
SPACESHIP_RPROMPT_ORDER=(vi_mode)
spaceship_vi_mode_enable
SPACESHIP_VI_MODE_SHOW=true
SPACESHIP_VI_MODE_NORMAL=Vim
SPACESHIP_VI_MODE_INSERT=

# navi shell widget
source "$(navi widget zsh)"

eval $(thefuck --alias)

# TODO:
# - missing a ton of aliases

###################
# Application-specific config. Move to new file?
###################
 
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
