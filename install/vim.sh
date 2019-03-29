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

vim +PluginInstall +qall
vim +PluginClean +qall

echo "-- Plugin Install Complete --"

return 1;
