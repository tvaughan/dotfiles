# -*- coding: utf-8; mode: sh -*-

readonly GOROOT=/srv/go
export GOROOT

PATH=$GOROOT/bin:$PATH
export PATH

readonly GOPATH=$HOME/.go
export GOPATH

PATH=$GOPATH/bin:$PATH
export PATH
