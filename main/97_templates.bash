#!/bin/bash

templates_dir="./templates"
user_templates_dir="$HOME/Templates"

# Check if the directory exists
if [ -d "$templates_dir" ]; then
    echo "Contents of $templates_dir:"
    
    # List the contents of the directory
    files=($(ls "$templates_dir"))

    # Check and copy each file if it doesn't exist in ~/Templates
    for file in "${files[@]}"; do
        file_path_src="$templates_dir/$file"
        file_path_dest="$user_templates_dir/$file"
        
        if [ -f "$file_path_dest" ]; then
            echo "$file exists in $user_templates_dir"
        else
            # Copy the file to ~/Templates
            cp "$file_path_src" "$file_path_dest"
            echo "$file copied to $user_templates_dir"
        fi
    done
else
    echo "Directory $templates_dir not found."
fi
