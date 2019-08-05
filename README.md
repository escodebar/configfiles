# Configuration

Configures my Dectris Workstation.

## Installation

Run the following commands:
```shell
$ cd `~/.config` && \
  git init . && \
  git remote add origin git@github.com:escodebar/config.git && \
  git fetch && \
  git checkout DECTRIS
```

## Settings

### Editorconfig

The `.editorconfig` file is never read out of `.config`.
Create a symbolic link to tell your editor to use this configuration:

```shell
$ ln -s ~/.config/editorconfig/config ~/.editorconfig
```

### Vim

Vim reads the `.vimrc` file in your home directory.
Create a symbolic link to tell vim to use this configuration:
```shell
$ ln -s ~/.config/vim/vimrc ~/.vimrc
```

Setup [Vundle](https://github.com/VundleVim/Vundle.vim) and install the plugins:
``` shell
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
  vim +PluginInstall +qall
```

To use [Markdown document preview](https://github.com/shime/vim-livedown) install [Livedown](https://github.com/shime/livedown):
```shell
$ npm install -g livedown
```

To check the syntax of your Python code install [Flake 8](http://flake8.pycqa.org/en/latest/):
```shell
$ python -m pip install flake8
```

To move to the right split, `Ctrl-s` is used, it is therefore required to set
```shell
$ echo "tty -ixon" >> ~/.zshrc
```
