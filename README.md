# automac

An Ansible playbook to initialise, configure, and update my ideal MacOS dev environment.

To run:
------
```
$ sudo easy_install pip
$ sudo pip install ansible
$ ansible-playbook playbook.yml
```

This does the following:
- Bundle ZSH plugins for static loading by Antibody
- Symlink ZSH dotfiles to home
- Install Homebrew, tap casks, and install packages
- Install Vim plugins and symlink vimrc

And will do:
- Install essential applications via Homebrew
- Set iTerm preferences and terminal font
- Set sensible MacOS defaults (caps lock as escape, configure dock icons, etc.), though may need Karabiner for this
- Possibly include generic defaults for often used libraries such as AWS, Serverless, JEnv, etc.

And also:
- Tidy up zshrc, possibly moving application-specific lines into their own aliased file to keep the file clean. Add alias expansion.
- Flesh out vimrc as some things are still not perfect (e.g. tab width)
- Include explanations of my setup (e.g. ZSH, Vim) in the readme
- Remove/archive old dotfiles repo and make this public for all to see

Issues:
- multi-search (ctrl-r) only works after re-sourcing .zshrc
