#!/bin/bash

say () {
	echo $@ >> $DEST
}

DEST=~/.bashrc

say
say "#================================"
say "# hyeonjin added `date '+%F'`"
say "#================================"
say
say "parse_git_branch() {"
say "git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\\\1)/'"
say "}"
say "export PS1=\"\e[0;31mT\\\t\e[m \e[0;32m\w\e[m\e[0;33m\\\$(parse_git_branch)\e[m\\\n\u@\h $ \""
say "export GREP_OPTIONS='--color=auto'"
say
say "# Set CLICOLOR if you want Ansi Colors in iTerm2"
say "export CLICOLOR=1"
say 
say "# Set colors to match iTerm2 Terminal Colors"
say "export TERM=xterm-256color"
say
say "alias ll='ls -alF'"
say "alias la='ls -A'"
say "alias l='ls -CF'"
say "alias tf=\"tail -F\""
say "alias wt=\"watch -n\""
say
say "#================================"

DEST=~/.vimrc

say "\" hyeonjin added `date '+%F'`"
say "set nu"
say "set nocp"
say "set softtabstop=4"
say "set tabstop=4"
say "set shiftwidth=4"
say "set autoindent"
say "set smartindent"
say "set cindent"
say "syntax on"

git config --global user.name  "hyonzin"
git config --global user.email "hyeonjin507@gmail.com"

if [ ! -f ~/.ssh/id_rsa ]; then
	mkdir -p ~/.ssh
	ssh-keygen -t rsa -q -N "" -f ~/.ssh/id_rsa
fi

