#!/bin/bash
cd ~/Downloads
curl -O https://downloads.vivaldi.com/stable/vivaldi-stable_6.2.3105.48-1_amd64.deb
sudo dpkg -i vivaldi-stable_6.2.3105.48-1_amd64.deb
rm vivaldi-stable_6.2.3105.48-1_amd64.deb
cd -