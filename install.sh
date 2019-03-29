#!/usr/bin/env bash

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m'

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles."

# macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\\n\\nRunning on macOS"
fi

# Prompt for Vim Setting Loader
while true; do
    read -p "Do you wish to load vim settings? [Y/n]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) return 0;;
        * ) echo "Please answer yes or no.";;
    esac
done

if source install/vim.sh == 0; then
    echo "${RED}Failed${NC}: Vim settings are failed to load"
else
    echo "${GREEN}Success${NC}: Vim settings are loaded."
fi

# Prompt for tmux Setting Loader
while true; do
    read -p "Do you wish to load tmux settings? [Y/n]" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) return 0;;
        * ) echo "Please answer yes or no.";;
    esac
done

if source install/tmux.sh == 0; then
    echo "${RED}Failed${NC}: Tmux settings are failed to load."
else
    echo "${GREEN}Success${NC}: Tmux settings are loaded."
fi

echo "Done. Reload your terminal."
