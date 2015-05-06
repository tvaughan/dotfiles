# -*- coding: utf-8; mode: sh -*-

readonly GEM_HOME=$HOME/.gem/ruby/2.0.0
export GEM_HOME

PATH=$GEM_HOME/bin:$PATH
export PATH

readonly RUBYOPT="-rubygems"
export RUBYOPT
