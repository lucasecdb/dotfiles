#!/bin/bash

link_home() {
  if [[ ! -d ~/`dirname $2` ]]; then
    mkdir -p ~/$(dirname $2)
  fi

  if [[ -f ~/$2 || -h ~/$2 ]]; then
    echo "[*] Backing up ~/$2"

    cp ~/$2 ~/$2.orig 2> /dev/null
    rm ~/$2
  fi

  echo "[*] Creating symlink for $2"

  ln -s ~/.dotfiles/$1 ~/$2 2> /dev/null

  if [ !"$?" = 0 ]; then
    echo "[!!] Failed to create symlink_home for $2"
  fi
}

if [ ! -d ~/.oh-my-zsh ]; then
  echo "[*] Installing oh-my-zsh"
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh &> /dev/null
fi

link_home tmux/tmux.conf .tmux.conf
link_home zsh/zshrc .zshrc
link_home bash/bashrc .bashrc
link_home bash/bashrc .bash_profile
link_home Xresources .Xresources

if [[ `uname` = 'Linux' ]]; then
        xrdb ~/.Xresources
        echo 'xrdb -load ~/.Xresources' >> ~/.xinitrc
fi

