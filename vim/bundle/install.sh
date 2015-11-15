echo 'Installing plugins...'
echo ''

# powerline-fonts
echo 'Installing FONTS'

if [[ -f ./fonts/install.sh ]]; then
	echo 'FONTS already installed, skipping...'
else
	git clone https://github.com/powerline/fonts.git
fi

# nerdtree
echo 'Installing NERDTREE'

if [[ -f ./nerdtree/README.markdown ]]; then
	echo 'NERDTREE already installed, skipping...'
else
	git clone https://github.com/scrooloose/nerdtree.git
fi

# numbers
echo 'Installing NUMBERS'

if [[ -f ./numbers/README.md ]]; then
	echo 'NUMBERS already installed, skipping...'
else
	git clone https://github.com/myusuf3/numbers.vim.git ./numbers
fi

# syntastic
echo 'Installing SYNTASTIC'

if [[ -f ./syntastic/README.markdown ]]; then
	echo 'SYNTASTIC already installed, skipping...'
else
	git clone https://github.com/scrooloose/syntastic.git
fi

# airline
echo 'Installing AIRLINE'

if [[ -f ./vim-airline/README.md ]]; then
	echo 'AIRLINE already installed, skipping...'
else
	git clone https://github.com/bling/vim-airline
fi

# fugitive
echo 'Installing FUGITIVE'

if [[ -f ./vim-fugivite/README.markdown ]]; then
	echo 'FUGITIVE already installed, skipping...'
else
	git clone git://github.com/tpope/vim-fugitive.git
fi

echo 'Installation done! :-)'
