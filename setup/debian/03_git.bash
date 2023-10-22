#!/bin/bash

# Last Verified: 2023-10-22T15:47:00Z

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

# Install Git
sudo apt install -y git

# Input username
read -p "Enter Git username: " username

# Input email address
read -p "Enter Git email: " email

# Input default branch
read -p "Enter Git default branch: " branch

# Run commands to setup ~/.gitconfig file
git config --global user.name "$username"
git config --global user.email "$email"
git config --global init.defaultBranch "$branch"

# Show contents of gitconfig
cat ~/.gitconfig
