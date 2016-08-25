#!/bin/bash

scriptPos=${0%/*}

absPath=$(pushd $scriptPos > /dev/null; pwd ; popd > /dev/null)

# this script activates the vim configuratation for the current user
nowTime=$(date +%Y%m%d-%k%M%S)

if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.$nowTime
fi

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.$nowTime
fi

ln -s $absPath/vimrc ~/.vimrc
ln -s $absPath ~/.vim
