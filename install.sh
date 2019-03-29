#!/usr/bin/env bash

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
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

source install/vim.sh
echo "Vim settings are loaded."

echo "Done. Reload your terminal."
