# -*- coding: utf-8; mode: sh -*-

if command -v dircolors > /dev/null 2>&1
then
    alias grep='grep --color=auto'
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias ls='ls --color=auto'
fi

alias ll='ls -Fl'
alias la='ll -A'
