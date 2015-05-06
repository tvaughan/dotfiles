# -*- coding: utf-8; mode: sh -*-

[[ -z $PS1 ]] && return

if [[ $(docker-machine status default 2>&1) != Running ]]
then
    docker-machine start default
    yes | docker-machine regenerate-certs default
fi

eval $(docker-machine env default --shell=bash)
