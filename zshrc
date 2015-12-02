source $HOME/.dotfiles/zshrc.aux

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep nomatch notify
unsetopt appendhistory autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lucas/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias la='ls -A'
alias ll='ls -lA'

# TST
alias tck='tst_checkout.py'
alias tcm='tst_commit.py'
alias tl='tst_login.py'
alias tt='tst_test.py'
alias tv='tst_version.py'

# custom alias
# alias open='gnome-open'
alias grep='grep --colour=auto'
alias la='ls -A'
alias ll='ls -Al'
alias ls='ls --color=auto'
alias py='python'
alias clear='echo "ctrl+l"'
alias cs50="cd ~/Dropbox/CS50/"
