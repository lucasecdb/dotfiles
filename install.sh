#!/bin/bash

link_file() {
    if [[ $1 = "" ]]; then
        echo "Invalid arguments"
    fi

    file=$1
    dest=$2

    if [[ $2 = "" ]]; then
        dest=$1
    fi

	if [[ -f ~/.$dest || -h ~/.$dest ]]; then
		echo "[*] Backing up ~/.$dest"

		cp ~/.$dest ~/.$dest.orig 2> /dev/null
		rm ~/.$dest
	fi

	echo "[*] Creating symlink for $dest"

	ln -s ~/.dotfiles/$file ~/.$dest 2> /dev/null

	if [ !"$?" = 0 ]; then
		echo "[!!] Failed to create symlink for $dest"
	fi
}

link_dir() {
	if [ "$1" = openbox ]; then
		if [[ ! -d ~/.config ]]; then
			mkdir ~/.config
		fi

		if [[ -f ~/.config/$1 || -h ~/.config/$1 ]]; then
			echo "[*] Backing up ~/.config/$1"

			cp ~/.config/$1 ~/.config/$1.orig 2> /dev/null
			rm ~/.config/$1
		fi
	else
		if [[ -f ~/.$1 || -h ~/.$1 ]]; then
			echo "[*] Backing up ~/.$1"

			cp ~/.$1 ~/.$1.orig 2> /dev/null
			rm ~/.$1
		fi
	fi

	echo "[*] Creating symlink for $1"

	if [ "$1" = openbox ]; then
		ln -s ~/.dotfiles/config/$1 ~/.config/$1 2> /dev/null
	else
		ln -s ~/.dotfiles/$1 ~/.$1 2> /dev/null
	fi

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
link_dir  vim
link_file vim/vimrc vimrc

# emacs
link_dir emacs.d

# tmux.conf
link_file tmux/tmux.conf tmux.conf

# zshrc
link_file zsh/zshrc zshrc

# bashrc
link_file bash/bashrc bashrc

# Xresources
link_file Xresources

if [[ `uname` = 'Linux' ]]; then
	xrdb ~/.Xresources
	echo 'xrdb -load ~/.Xresources' >> ~/.xinitrc
fi

# i3
link_dir i3

# openbox
link_dir openbox

# mpd and ncmpcpp
link_dir mpd
link_dir ncmpcpp

# fonts
link_dir fonts

# themes
link_dir themes

echo
echo "Finished installing dotfiles"
