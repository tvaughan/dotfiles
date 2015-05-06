# -*- coding: utf-8; mode: sh -*-

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 022

if [ -x $(which brew) ]
then
    BREW_PREFIX=$(brew --prefix)
    export BREW_PREFIX

    BYOBU_PREFIX=$BREW_PREFIX
    export BYOBU_PREFIX
fi

if [ -n $BASH_VERSION ]
then
    if [ -f $HOME/.bashrc ]
    then
	. $HOME/.bashrc
    fi
fi

if [ -d $HOME/bin ]
then
    PATH=$HOME/bin:$PATH
    export PATH
fi

_byobu_sourced=1 . $(which byobu-launch) 2>/dev/null || true
