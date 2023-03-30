#!/bin/sh

# show status bar in finder
default write com.apple.finder ShowStatusBar true

# show path bar in finder
default write com.apple.finder ShowPathBar true

# do the same as the key is duplicated (spelling mistake)
default write com.apple.finder ShowPathbar true

# stop spaces rearranging
defaults write -g com.apple.mouse.dock mru-spaces false

# enable right click
default write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton

# increase mouse speed
default write com.apple.mouse.scaling 4

# fixes Rectangle window snap for iTerm2
default write com.googlecode.iterm2 DisableWindowSizeSnap 1
    
# use standard function keys
default write com.apple.keyboard.fnState true

# map Esc(ape) to Caps Lock
hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x700000029}]}'

# make Library directory visible
chflags nohidden ~/Library
