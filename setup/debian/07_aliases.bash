#!/bin/bash

script_directory="$(cd "$(dirname "$0")" && pwd)"
bash_aliases_path="$HOME/.bash_aliases"
new_bash_aliases_path="$script_directory/hidden/.bash_aliases"

# Check if ~/.bash_aliases exists
if [ -f "$bash_aliases_path" ]; then
    # Remove existing ~/.bash_aliases
    rm "$bash_aliases_path"
    echo "Existing $bash_aliases_path removed."
fi

# Copy the new .bash_aliases into place
cp "$new_bash_aliases_path" "$HOME/"
echo "New $bash_aliases_path copied successfully."
