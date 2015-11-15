#!/usr/bin/zsh

if [ $(pwd) != /home/$USER/.dotfiles ]; then
	cd
	cd .dotfiles
fi

# make symbolic links

# vimrc
ln -s vimrc ~/.vimrc

# tmux.conf
ln -s tmux.conf ~/.tmux.conf

# zshrc
ln -s zshrc ~/.zshrc

# bashrc
ln -s bashrc ~/.bashrc
