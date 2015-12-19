#!/bin/bash

function link_file {
	if [[ !$2 = '' ]]; then
		if [[ -f ~/.$1.$2 || -h ~/.$1.$2 ]]; then
			echo Backing up ~/.$1.$2

			cp ~/.$1.$2 ~/.$1.$2.orig
			rm ~/.$1.$2
		fi
	else
		if [[ -f ~/.$1 || -h ~/.$1 ]]; then
			echo Backing up ~/.$1

			cp ~/.$1 ~/.$1.orig
			rm ~/.$1
		fi
	fi

	echo Creating symlink for $1

	if [ $1 = vimrc ]; then
		dir=vim
	elif [ $1 = bashrc ]; then
		dir=bash
	elif [ $1 = zshrc ]; then
		dir=zsh
	elif [ $1 = tmux ]; then
		dir=tmux
	else
		dir=.
	fi

	if [ $1 = tmux ]; then
		ln -s ~/.dotfiles/$dir/$1.$2 ~/.$1.$2
	else
		ln -s ~/.dotfiles/$dir/$1 ~/.$1
	fi

	echo
}

function link_dir {
	if [[ -f ~/.$1 ]]; then
		echo Backing up ~/.$1

		cp ~/.$1 ~/.$1.orig
		rm ~/.$1
	fi

	echo Creating symlink for $1
	ln -s ~/.dotfiles/$1 ~/.$1

	echo
}

## make symbolic links

# vim and vimrc
link_dir  vim
link_file vimrc

# tmux.conf
link_file tmux conf

# zshrc
link_file zshrc

# bashrc
link_file bashrc

# Xresources
link_file Xresources

# i3
link_dir i3

# mpd and ncmpcpp
link_dir mpd
link_dir ncmpcpp

# fonts
link_dir fonts
