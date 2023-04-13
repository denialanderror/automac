#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then

  # install homebrew if it's missing
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  if [ -f "$HOME/.Brewfile" ]; then
    echo "Updating homebrew bundle"
    brew bundle --global
  fi

fi

# install fzf keybindings and fuzzy completion
$(brew --prefix)/opt/fzf/install

# add Docker completion
ln -sf /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ~/.zsh/completion/_docker
ln -sf /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion ~/.zsh/completion/_docker-compose