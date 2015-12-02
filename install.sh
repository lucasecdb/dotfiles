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
ln -s vim/vimrc ~/.vimrc

# tmux.conf
if [[ -f ~/.tmux.conf ]]; then
	echo 'Backing up ~/.tmux.conf'

	cp ~/.tmux.conf ~/.tmux.conf.orig
	rm ~/.tmux.conf
fi

echo 'Creating symlink for tmux.conf'
ln -s tmux/tmux.conf ~/.tmux.conf

# zshrc
if [[ -f ~/.zshrc ]]; then
	echo 'Backing up ~/.zshrc'

	cp ~/.zshrc ~/.zshrc.orig
	rm ~/.zshrc
fi

echo 'Creating symlink for zshrc'
ln -s zsh/zshrc ~/.zshrc

# bashrc
if [[ -f ~/.bashrc ]]; then
	echo 'Backing up ~/.bashrc'

	cp ~/.bashrc ~/.bashrc.orig
	rm ~/.bashrc
fi

echo 'Creating symlink for bashrc'
ln -s bash/bashrc ~/.bashrc

# i3
if [[ -f ~/.i3 ]]; then
	echo 'Backing up ~/.i3.conf'

	cp ~/.i3 ~/.i3.orig
	rm ~/.i3
fi

echo 'Creating symlink for i3'
ln -s i3 ~/.i3

# fonts
if [[ -f ~/.fonts ]]; then
	echo 'Backing up ~/.fonts'

	cp ~/.fonts ~/.fonts.orig
	rm ~/.fonts
fi

echo 'Creating symlink for fonts'
ln -s fonts ~/.fonts
