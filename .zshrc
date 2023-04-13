# if this isn't sourced first, the python2 to python3 alias is too late to prevent errors
source $HOME/.zsh_aliases

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.zsh_plugins

# load zsh completions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)
autoload -U compinit && compinit

# history configuration
HISTSIZE=10000
HISTFILE=$HOME/.zsh_history
SAVEHIST=10000

setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

# set dirs history and navigation
setopt AUTO_CD PUSHD_IGNORE_DUPS

# automac configuration
export AUTOMAC_HOME="$HOME/automac"

# terminal/editor configuration
export VISUAL=nvim
export EDITOR="$VISUAL"
bindkey -e # ensures vim mode is not set
bindkey "[3~" delete-char

## inverts globalias default behavior to make ctrl-space expand alias 
bindkey -M emacs "^ " globalias
bindkey -M viins "^ " globalias
bindkey -M emacs " " magic-space
bindkey -M viins " " magic-space

# makes z tables look nice
zstyle ':completion:*' menu select

eval $(thefuck --alias oops)
eval "$(direnv hook zsh)"

# add to path
 export PATH=$PATH:/usr/local/sbin:/usr/local/go/bin:${HOME}/go/bin:$HOME/.cargo/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

