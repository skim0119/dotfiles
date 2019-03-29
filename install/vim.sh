#!/usr/bin/env bash

if [ -f ~/.vimrc_bk ]; then
    echo "-- Backup file exist. Please check and remove ~/.vimrc_bk file.";
    return 0;
fi

if [ -f ~/.vimrc ]; then
    echo "-- Original file exist. It is moved to ~/.vimrc_bk"
    cat ~/.vimrc >> ~/.vimrc_bk
fi

cat ./vim/vimrc.vim > ~/.vimrc

echo "-- Plugin Installation --"

vim +PluginInstall +qall
vim +PluginClean +qall

echo "-- Plugin Install Complete --"

