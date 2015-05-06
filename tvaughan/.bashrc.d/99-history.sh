# -*- coding: utf-8; mode: sh -*-

[[ -z $PS1 ]] && return

readonly HISTCONTROL=ignoreboth
export HISTCONTROL

readonly HISTSIZE=1000
export HISTSIZE

readonly HISTFILESIZE=2000
export HISTFILESIZE

shopt -s histappend
