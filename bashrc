alias l="ls -CF"
alias ll="ls -alF"
alias la="ls -aF"

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# tail
alias tf="tail -F"

#for PS1
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\e[0;31mT\t\e[m \e[0;32m\w\e[m\e[0;33m$(parse_git_branch)\e[m\n\u@\h $ "

