# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.zsh_plugins
source $HOME/.zsh_aliases

# load zsh completions
fpath=(~/.zsh/completion /usr/local/share/zsh/site-functions $fpath)
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
bindkey -e # ensures vim mode is turned off
bindkey "[3~" delete-char

## inverts globalias default behavior to make ctrl-space expand alias 
bindkey -M emacs "^ " globalias
bindkey -M viins "^ " globalias
bindkey -M emacs " " magic-space
bindkey -M viins " " magic-space

# navi shell widget
source "$(navi widget zsh)"

eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
