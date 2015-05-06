# -*- coding: utf-8; mode: sh -*-

for PACKAGE in /usr/local/share/emacs/site-lisp/*
do
    if test -d $PACKAGE/bin
    then
        PATH=$PACKAGE/bin:$PATH
        export PATH
    fi
done
