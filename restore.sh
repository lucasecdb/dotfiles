#!/bin/bash

restore() {
	echo "[?] Looking for backups for $1"

	if [[ -f ~/.$1.orig && -L ~/.$1 ]]; then
		echo "[*] Found backup!"
		rm ~/.$1
		mv ~/.$1.orig ~/.$1
	else
		echo "[!] Didn\'t found a backup.. attempting to remove symlink"
		if [[ -L ~/.$1 ]]; then
			echo "[*] Found symlink!"
			rm ~/.$1
		else
			echo "[!] Didn\'t found symlink :\("
		fi
	fi
}

echo
echo Starting restoring session!
echo

# vim and vimrc
restore  vim
restore vimrc

# tmux.conf
restore tmux.conf

# zshrc
restore zshrc

# bashrc
restore bashrc

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

echo "Ended restore session, we\'ll miss you"
