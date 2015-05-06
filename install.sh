#!/usr/bin/env bash
# -*- coding: utf-8; mode: sh -*-

set -o errexit

readonly DOTFILES_HOME=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)

cd $HOME
rm -rf .Xdefaults*
rm -rf .Xresources*
rm -rf .bashrc*
rm -rf .config/autostart*
rm -rf .git*
rm -rf .gvim*
rm -rf .less*
rm -rf .liquidprompt*
rm -rf .local/share/applications*
rm -rf .local/share/recently-used.xbel
rm -rf .vim*

cd $DOTFILES_HOME
rsync --archive tvaughan/ $HOME/
