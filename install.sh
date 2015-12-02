#!/usr/bin/zsh

if [ $(pwd) != /home/$USER/.dotfiles ]; then
	mkdir -p ~/.dotfiles
	cd
	cd .dotfiles
fi

# make symbolic links

# vimrc
ln -s vimrc ~/vim/.vimrc

# tmux.conf
ln -s tmux.conf ~/tmux/.tmux.conf

# zshrc
ln -s zshrc ~/zsh/.zshrc

# bashrc
ln -s bashrc ~/.bashrc

# i3
ln -s i3 ~/.i3

# fonts
ln -s fonts ~/.fonts
