#!/usr/bin/zsh

if [ $(pwd) != /home/$USER/.dotfiles ]; then
	mkdir -p ~/.dotfiles
	cd
	cd .dotfiles
fi

# make symbolic links

# vimrc
if [[ -f ~/.vimrc ]]; then
	echo 'Backing up ~/.vimrc'

	cp ~/.vimrc ~/.vimrc.orig
	rm ~/.vimrc
fi

echo 'Creating symlink for vimrc'
ln -s /home/$USER/.dotfiles/vim/vimrc ~/.vimrc

echo ''

# tmux.conf
if [[ -f ~/.tmux.conf ]]; then
	echo 'Backing up ~/.tmux.conf'

	cp ~/.tmux.conf ~/.tmux.conf.orig
	rm ~/.tmux.conf
fi

echo 'Creating symlink for tmux.conf'
ln -s /home/$USER/.dotfiles/tmux/tmux.conf ~/.tmux.conf

echo ''

# zshrc
if [[ -f ~/.zshrc ]]; then
	echo 'Backing up ~/.zshrc'

	cp ~/.zshrc ~/.zshrc.orig
	rm ~/.zshrc
fi

echo 'Creating symlink for zshrc'
ln -s /home/$USER/.dotfiles/zsh/zshrc ~/.zshrc

echo ''

# bashrc
if [[ -f ~/.bashrc ]]; then
	echo 'Backing up ~/.bashrc'

	cp ~/.bashrc ~/.bashrc.orig
	rm ~/.bashrc
fi

echo 'Creating symlink for bashrc'
ln -s /home/$USER/.dotfiles/bash/bashrc ~/.bashrc

echo ''

# cd to home directory

cd

# i3
if [[ -f .i3 ]]; then
	echo 'Backing up ~/.i3.conf'

	cp .i3 .i3.orig
	rm .i3
fi

echo 'Creating symlink for i3'
ln -s /home/$USER/.dotfiles/i3 /home/$USER/.i3

if [[ -f .dotfiles/i3/i3/config ]]; then
	echo 'Cleaning up extra files'
	rm .dotfiles/i3/i3
fi

echo ''

# fonts
if [[ -f .fonts ]]; then
	echo 'Backing up ~/.fonts'

	cp .fonts .fonts.orig
	rm .fonts
fi

echo 'Creating symlink for fonts'
ln -s /home/$USER/.dotfiles/fonts /home/$USER/.fonts

if [[ -f .dotfiles/fonts/fonts/Hack-Regular.ttf ]]; then
	echo 'Cleaning up extra files'
	rm .dotfiles/fonts/fonts
fi
