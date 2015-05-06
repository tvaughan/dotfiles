# -*- coding: utf-8; mode: sh -*-

if [[ -d $HOME/.bashrc.d ]]
then
    for SCRIPT in $HOME/.bashrc.d/*.sh
    do
        if [[ -r $SCRIPT ]]
        then
            . $SCRIPT
        fi
    done
fi
