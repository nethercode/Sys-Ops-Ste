#!/bin/bash

sudo apt update
sudo apt install -y git

mkdir -p ~/tmp/sys-ops-ste/
git clone https://github.com/nethercode/sys-ops-ste ~/tmp/sys-ops-ste/
