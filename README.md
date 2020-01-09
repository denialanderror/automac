# automac

An Ansible playbook to initialise, configure, and update my ideal MacOS dev environment.

To run:
------
```
$ sudo easy_install pip
$ sudo pip install ansible
$ ansible-playbook playbook.yml --ask-become-pass
```

This does the following:
- Bundle ZSH plugins for static loading by Antibody
- Symlink ZSH dotfiles to home
- Install Homebrew, tap casks, install packages and applications
- Set iTerm preferences and terminal font
- Set sensible MacOS defaults and key bindings (with Karabiner Elements)
- Install Vim plugins and symlink vimrc

And also:
- Tidy up zshrc, possibly moving application-specific lines into their own aliased file to keep the file clean. Add alias expansion.
- Include explanations of my setup (e.g. ZSH, Vim) in the readme
- Remove/archive old dotfiles repo and make this public for all to see
