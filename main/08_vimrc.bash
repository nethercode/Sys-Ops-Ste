#!/bin/bash

script_directory="$(cd "$(dirname "$0")" && pwd)"
vimrc_path="$HOME/.vimrc"
new_vimrc_path="$script_directory/hidden/.vimrc"

# Check if ~/.vimrc exists
if [ -f "$vimrc_path" ]; then
    # Remove existing ~/.vimrc
    rm "$vimrc_path"
    echo "Existing $vimrc_path removed."
fi

# Copy the new .vimrc into place
cp "$new_vimrc_path" "$HOME/"
echo "New $vimrc_path copied successfully."
