#!/bin/bash

link() {
  if [[ -f ~/.$1 || -h ~/.$1 ]]; then
    echo "[*] Backing up ~/.$1"

    cp ~/.$1 ~/.$1.orig 2> /dev/null
    rm ~/.$1
  fi

  echo "[*] Creating symlink for $1"

  ln -s ~/.dotfiles/$1 ~/.$1 2> /dev/null

  if [ !"$?" = 0 ]; then
    echo "[!!] Failed to create symlink for $1"
  fi
}

## make symbolic links
echo
echo "Starting installation of dotfiles"
echo

# oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
        echo "[*] Installing oh-my-zsh"
        git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh &> /dev/null
fi

# vim and vimrc
link vim
link vim/init.vim vimrc

# emacs
link emacs.d

# tmux.conf
link tmux/tmux.conf tmux.conf

# zshrc
link zsh/zshrc zshrc

# bashrc
link bash/bashrc bashrc
link bash/bashrc bash_profile


# Xresources
link Xresources

if [[ `uname` = 'Linux' ]]; then
        xrdb ~/.Xresources
        echo 'xrdb -load ~/.Xresources' >> ~/.xinitrc
fi

# fonts
link fonts

# themes
link themes

echo
echo "Finished installing dotfiles"
