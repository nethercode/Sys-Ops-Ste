#!/bin/bash

cd ~
rm -r ~/tmp
mkdir -p ~/projects/autosetup
git clone git@github.com:nethercode/autosetup ~/projects/autosetup
cd ~/projects/autosetup