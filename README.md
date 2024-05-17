# automac

An Ansible playbook to initialise, configure, and update my ideal MacOS dev environment.

To run:
------
```
$ sudo pip3 install ansible
$ ansible-playbook playbook.yml --ask-become-pass
```

Tasks:
-----
This playbook has the following tasks, which can all be run in isolation by adding `--tag="<tag>"` to the command above:
- `brew` - Installs/updates Homebrew, installs brew packages and applications via casks. The package list can be found and modified in `roles/setup/vars/main.yml`
- `zsh` - Bundles ZSH plugins using Antibody, symlinks dotfiles, adds completions, and changes shell to ZSH. Plugins can be found and modified in `roles/setup/files/zsh_plugins.txt`
- `vim` - Installs Vim plugins using the native Vim plugin manager and symlinks .vimrc. Plugins can be found and modified within the plugin install script in `roles/setup/files/vim_plugin_man.sh`
- `misc` - Symlinks config for iTerm2, Karabiner Elements and gitignore
- `osx` - Sets various MacOS defaults
