#!/usr/bin/zsh

if [ $(pwd) == /home/$USER/.dotfiles ]; then
	# make symbolic links
	
	# vimrc
	ln -s vimrc ~/.vimrc

	# tmux.conf
	ln -s tmux.conf ~/.tmux.conf

	# zshrc
	ln -s zshrc ~/.zshrc
fi
