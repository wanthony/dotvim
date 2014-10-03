# wanthony/dotvim

This repository contains my personal .vim configuration.  I use plug.vim to manage plugins and that's basically it.  Really simple.

# Setup

To set up the dotfiles properly, run through the following:

```bash
$ cd
$ ln -s /path/to/dotvim ~/.vim
$ ln -s /path/to/dotvim/vimrc ~/.vimrc
$ ln -s /path/to/dotvim/vimrc.plugins ~/.vimrc.plugins
```

Following that, run `vim`.  Install plugins with `:PlugInstall` (they will be installed to `~/.vim/plugged`).
