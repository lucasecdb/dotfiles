#!/bin/bash

restore() {
  if [[ -f ~/.$1.orig && -L ~/.$1 ]]; then
    echo "[*] Restoring $1"
    rm ~/.$1
    mv ~/.$1.orig ~/.$1
  else
    if [[ -L ~/.$1 ]]; then
      rm ~/.$1
    fi
  fi
}

echo Starting restoring session!
echo

# vim and vimrc
restore vim
restore vimrc
restore config/nvim/init.vim

# tmux.conf
restore tmux.conf

# zshrc
restore zshrc

# bashrc
restore bashrc
restore bash_profile

# Xresources
restore Xresources

if [[ -f ~/.Xresources ]]; then
  xrdb ~/.Xresources > /dev/null
fi

# i3
restore i3

# openbox
restore openbox

# mpd and ncmpcpp
restore mpd
restore ncmpcpp

# fonts
restore fonts

echo Ended restore session
