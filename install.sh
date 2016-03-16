#!/bin/bash

link_file() {
	if [[ -f ~/.$1 || -h ~/.$1 ]]; then
		echo "[*] Backing up ~/.$1"

		cp ~/.$1 ~/.$1.orig
		rm ~/.$1
	fi

	echo "[*] Creating symlink for $1"

	if [ "$1" = vimrc ]; then
		dir=vim
	elif [ "$1" = bashrc ]; then
		dir=bash
	elif [ "$1" = zshrc ]; then
		dir=zsh
	elif [ "$1" = tmux.conf -o "$1" = tmux ]; then
		dir=tmux
	else
		dir=.
	fi

	ln -s ~/.dotfiles/$dir/$1 ~/.$1 2> /dev/null

	if [ !"$?" = 0 ]; then
		echo "[!!] Failed to create symlink for $1"
	fi
}

link_dir() {
	if [ "$1" = openbox ]; then
		if [[ ! -d ~/.config ]]; then
			mkdir ~/.config
		fi

		if [[ -f ~/.config/$1 || -h ~/.config/$1 ]]; then
			echo "[*] Backing up ~/.config/$1"

			cp ~/.config/$1 ~/.config/$1.orig
			rm ~/.config/$1
		fi
	else
		if [[ -f ~/.$1 || -h ~/.$1 ]]; then
			echo "[*] Backing up ~/.$1"

			cp ~/.$1 ~/.$1.orig
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
link_file vimrc

# tmux.conf
link_file tmux.conf

# zshrc
link_file zshrc

# bashrc
link_file bashrc

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

echo "Finished installing dotfiles"
