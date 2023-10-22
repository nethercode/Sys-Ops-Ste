#!/bin/bash

# <https://www.spotify.com/de-en/download/linux/>

# configure debian repository
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# install the spotify client
sudo apt-get update && sudo apt-get install -y spotify-client
