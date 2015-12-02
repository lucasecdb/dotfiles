#!/usr/bin/zsh

if [ $(pwd) != /home/$USER/.dotfiles ]; then
	mkdir -p ~/.dotfiles
	cd
	cd .dotfiles
fi

# make symbolic links

# vimrc
ln -s vim/vimrc ~/.vimrc

# tmux.conf
ln -s tmux/tmux.conf ~/.tmux.conf

# zshrc
ln -s zsh/zshrc ~/.zshrc

# bashrc
ln -s bash/bashrc ~/.bashrc

# i3
ln -s i3 ~/.i3

# fonts
ln -s fonts ~/.fonts
