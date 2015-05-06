# -*- coding: utf-8; mode: sh -*-

readonly LESSHISTFILE=/dev/null
export LESSHISTFILE

readonly LESSHISTSIZE=0
export LESSHISTSIZE

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
