#! /usr/local/bin/zsh

source ./installers/setup

for i in $ZDOTDIR/installers/additions/*; do source $i; done