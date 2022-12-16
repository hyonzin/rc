#!/bin/bash

say () {
    echo $@
    echo $@ >> $DEST
}

curl -L https://raw.githubusercontent.com/hyonzin/rc/master/.bashrc.hyonzin > ~/.bashrc.hyonzin
curl -L https://raw.githubusercontent.com/hyonzin/rc/master/.git-completion.sh > ~/.git-completion.sh
curl -L https://raw.githubusercontent.com/hyonzin/rc/master/.kubectl-completion.sh > ~/.kubectl-completion.sh

DEST=~/.bashrc
echo [to $DEST]
say
say "#================================"
say "# hyonzin/rc `date '+%F'`"
say "source ~/.bashrc.hyonzin"
say "#================================"

DEST=~/.vimrc
echo [to $DEST]
say "\" hyonzin/rc `date '+%F'`"
say "set nu"
say "set nocp"
say "set softtabstop=4"
say "set tabstop=4"
say "set shiftwidth=4"
say "set autoindent"
say "set smartindent"
say "set cindent"
say "syntax on"
say "colorscheme elflord"

# git global setting
git config --global user.name  "hyonzin"
git config --global user.email "hyeonjin507@gmail.com"
git config --global push.default current
git config --global http.postBuffer 524288000
git config --global core.editor "vim"

# generate ssh key
if [ ! -f ~/.ssh/id_rsa ]; then
    mkdir -p ~/.ssh
    ssh-keygen -t rsa -q -N "" -f ~/.ssh/id_rsa
fi
