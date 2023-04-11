#!/bin/sh

if [ -d "$HOME/.iterm2" ]; then
    echo "Setting iTerm2 prefs directory"
    defaults write com.googlecode.iterm2 PrefsCustomFolder "$HOME/.iterm2"
    defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
  fi
