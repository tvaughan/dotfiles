# -*- coding: utf-8; mode: sh -*-

[[ -z $PS1 ]] && return

if [[ -f /usr/local/share/liquidprompt ]]
then
     . /usr/local/share/liquidprompt
fi
