#!/usr/bin/env bash

CONFIG_NAME=".tmux.config"
BACKUP_NAME=".tmux.config_bk"
DOTFILE_CONFIG="./tmux/tmux.config"

if [ -f ~/${BACKUP_NAME} ]; then
    echo "-- Backup file exist. Please check and remove ~/${BACKUP_NAME} file.";
    return 0;
fi

if [ -f ~/${CONFIG_NAME} ]; then
    echo "-- Original file exist. It is moved to ~/${BACKUP_NAME}"
    cat ~/${CONFIG_NAME} >> ~/${BACKUP_NAME}
fi

cat ${DOTFILE_CONFIG} > ~/${CONFIG_NAME}

return 1;
