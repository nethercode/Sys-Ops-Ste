#!/bin/bash

# Install Git
sudo apt install -y git

# Make directory (with parent) for repository clone
mkdir -p ~/Projects/Autosetup

# Clone Autosetup repository
git clone https://github.com/Nethercode/Autosetup ~/Projects/Autosetup

# Run commands to setup ~/.gitconfig file
git config --global user.name "Username"
git config --global user.email "user@example.com"
git config --global init.defaultBranch main
