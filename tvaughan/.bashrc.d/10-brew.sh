# -*- coding: utf-8; mode: sh -*-

[[ -z $BREW_PREFIX ]] && return

readonly BASH_COMPLETION=$BREW_PREFIX/share/bash-completion/bash_completion

if [[ -f $BASH_COMPLETION ]]
then
    . $BASH_COMPLETION
fi

for PACKAGE in coreutils gnu-sed
do
    LIBEXEC_PATH=/usr/local/opt/$PACKAGE/libexec

    PATH=$LIBEXEC_PATH/gnubin:$PATH
    export PATH

    MANPATH=$LIBEXEC_PATH/gnuman:$MANPATH
    export MANPATH
done
