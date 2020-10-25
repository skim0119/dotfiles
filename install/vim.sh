#!/usr/bin/env bash

CONFIG_NAME=".vimrc"
BACKUP_NAME=".vimrc_bk"
DOTFILE_CONFIG="./vim/vimrc.vim"

if [ -f ~/${BACKUP_NAME} ]; then
    echo "-- Backup file exist. Please check and remove ~/${BACKUP_NAME} file.";
    return 0;
fi

if [ -f ~/${CONFIG_NAME} ]; then
    echo "-- Original file exist. It is moved to ~/${BACKUP_NAME}";
    cat ~/${CONFIG_NAME} >> ~/${BACKUP_NAME}
fi

cat ${DOTFILE_CONFIG} > ~/${CONFIG_NAME}

echo "-- Plugin Installation --"

# Install Vundle + plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
vim +PluginClean +qall

# Complete install for YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
python ./install.py --clang-completer
cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py ~/.vim/
# (TODO) Complete install for YouCompleteMe (clang)
# Checkout: https://edward0im.github.io/technology/2020/09/17/vim/#org1dc92b2
# 2.1.1
# Problem: Default version only support standard library for c++

echo "-- Plugin Install Complete --"

return 1;
