#! /usr/local/bin/zsh

source ./installers/setup 1> /dev/null

for i in $ZDOTDIR/installers/additions/*; do source $i; done