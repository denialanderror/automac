# .dotfiles

v3 of my preferred MacOS setup, this time doing away with Ansible and moving to [yadm](https://yadm.io/). This is intended to be a living repository of my dotfiles, installs, and preferences, to bootstrap clean installs and keep existing ones up to date.

## Bootstrapping

There is an init script that will do everything for you. Simply run:

```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/denialanderror/dotfiles/main/init.sh)"
```

This will install Homebrew and yadm, then clone the dotfiles with yadm and run the bootstrap scripts.

### The Bootstraps

The `.config/yadm` directory contains a number of bootstrap scripts:

- `homebrew.sh` - Installs/updates Homebrew, then uses Bundle and the Brewfile to install packages and applications via casks
- `vim` - Installs Vim plugins using VimPlug
- `iterm2` - Sets the prefs directory so the configs stored in `/.config/iterm2` are used
- `macos` - Sets various MacOS defaults

## Ongoing Maintenance

yadm by default only runs the bootstrap scripts on the initial clone of the repo (which makes sense) but we can use them again to continue to update our preferences as and when needed by running `yadm bootstrap` (or just run the scripts individually). Changes can be committed, pushed, fetched, etc. through yadm using a very similar API to git.
