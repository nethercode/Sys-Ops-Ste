#!/bin/bash
cp ../hidden/.bash_aliases ~ # Copy .bash_aliases file to home
rm ~/.bashrc && cp ../hidden/.bashrc ~ # Copy .gitconfig file to home
cp ../hidden/.gitconfig ~ # Copy .gitconfig file to home
cp ../hidden/.vimrc ~ # Copy .vimrc file to home
source ~/.bashrc # Reload .bashrc (Bash configurations)