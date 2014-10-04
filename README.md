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

# Plugins Used

I'm currently using the following plugins:

* vim-sensible - Sensible defaults for vim (keybindings and other settings)
* jellybeans.vim - My favorite vim color scheme
* ctrlp - A fuzzy file finder - similar to sublime text's Ctrl+P palette
* vim-multiple-cursors - A really nice vim version of multiple cursors / multiple selections
* vim-fugitive - A wonderful git client
* vim-surround - Manage surrounding characters on words, such as parens or quotes
* tcomment_vim - A plugin to easily comment / uncomment lines
* tabular - Work with tabular text in (for example) Markdown files
* gundo.vim - Provide a visible undo tree
* vim-easymotion - Provide an easy way to navigate to various characters in the buffer
* vim-airline - A nice looking "status bar" for the window
* syntastic - Runs many linters and displays results in the gutter
* vim-coffee-script - Coffeescript support for vim
* vim-rails - Provides commands to assist with Rails development
* vim-markdown - Provides commands and helpers for Markdown editing in vim
* vim-better-whitespace - Provides methods to trim trailing whitespace on save, and highlight
  trailing whitespace
* vim-vinegar - A very simple alternative to plugins like NERDTree
* vim-endwise - Provide closing `end` or closing curly braces automatically
