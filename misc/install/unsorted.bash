#!/bin/bash

<<UPDATE
sudo apt update
UPDATE

<<CURL
sudo apt install -y curl
CURL

<<GITHUBCLI
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# $ gh auth login
# > GitHub.com
# > SSH
# > Y
# > No Passphrase
# > gh_cli_ssh_key_yyyymmdd
# > Paste an authentication token 
#     -> https://github.com/settings/tokens
#     -> Generate new token
#     -> Scopes = ["repo", "read:org", "admin:public_key"]
# 
# git config --global user.name "Username"
# git config --global user.email "user@example.com"
# git config -l
# 
# git clone git@github.com:Username/Repository
# cd Repository
# 
# *Make some changes to tracked files within the repository*
# ( . . . )
# 
# git add . && git commit -m "Commit message goes here"
# -OR-
# git commit -am "Commit message goes here"
# git push
GITHUBCLI

<<VIRTUALBOX
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian bookworm contrib" | sudo tee -a /etc/apt/sources.list.d/virtualbox.list
# wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
sudo apt update
sudo apt install virtualbox-6.1
VIRTUALBOX

<<VSCODIUM
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install -y codium
VSCODIUM

<<BASH
# Pre-installed
BASH

<<DENO
curl -fsSL https://deno.land/x/install/install.sh | sh
# echo 'export DENO_INSTALL="/home/user/.deno"' >> ~/.bashrc
# echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> ~/.bashrc
# source ~/.bashrc
DENO

<<GCC
sudo apt install -y gcc
GCC

<<GO
sudo apt install -y golang
GO

<<JAVA
sudo apt install default-jre
sudo apt install default-jdk
JAVA

<<KOTLIN
sudo apt install -y kotlin
KOTLIN

<<LUA
sudo apt install -y lua5.4
LUA

<<NODE
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
nvm install lts
NODE

<<PERL
# Pre-installed
PERL

<<PHP
sudo apt install -y php
PHP

<<PYTHON
# Pre-installed
PYTHON

<<RUBY
sudo apt install -y ruby # or, ruby-full (includes gems and irb)
RUBY

<<RUSTUP
sudo apt install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Last Verified: 
# 1. Input '1' to proceed with default installation
# 2. Restart the shell to reload PATH environment variable
RUSTUP

<<TYPESCRIPT
# Requires npm
npm install -g typescript
TYPESCRIPT
