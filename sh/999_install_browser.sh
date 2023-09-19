#!/bin/bash

<<BRAVE
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install -y brave-browser

# Last Verified: DYYYYMMDDTHHMMSSZ
# 1. Skip (Do not set Brave as default browser)
# 2. Dark mode
# 3. Uncheck "Send diagnostic reports if you experience a crash or freeze."
# 4. Uncheck "Share completely private and anonymous product insights about what features are being used by Brave's users."
# 5. Finish
# 6. Hide Brave Rewards icon
# 7. Hide Brave Wallet icon
# 8. Select No Thanks for Brave News
# 9. Customize -> Background Image -> Show Sponsored Images -> Toggle OFF
# 10. Customize -> Brave Stats -> Show Brave Stats -> Toggle OFF
# 11. Customize -> Top Sites -> Top Sites -> Toggle OFF
# 12. Customize -> Clock -> Format -> 24-hour clock
# 13. Customize -> Cards -> Cards -> Toggle OFF
# 14. Customize -> Cards -> Brave Talk -> Hide
# 15. Customize -> Cards -> Brave Rewards -> Hide
# 16. Menu (Customize and control Brave) -> Settings -> Appearance -> Show home button -> Toggle ON
# 17. Menu (Customize and control Brave) -> Settings -> Extensions -> Webstore
# 18. Add extensions: ["AdBlock Suite", "Dark Reader", "Enhancer for YouTube", "I still don't care about cookies", "SponsorBlock for YouTube", "uBlock Origin"]
BRAVE

<<CHROME
# Add the Google Chrome repository
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Import the Google Chrome GPG key
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Update your package list
sudo apt-get update

# Install Google Chrome
sudo apt-get install google-chrome-stable

# Cleanup
sudo rm /etc/apt/sources.list.d/google-chrome.list

# Last Verified: D20230917T031000Z
# 1. Uncheck "Make default browser" and "Send data" options
# 2. Sign in
# 3. Sync (and wait for operations to complete)
# 4. Skip setting as default browser
CHROME

<<VIVALDI
# Add the Vivaldi repository
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list

# Import the Vivaldi GPG key
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -

# Update your package list
sudo apt update

# Install Vivaldi
sudo apt install vivaldi-stable

# Cleanup
sudo rm /etc/apt/sources.list.d/vivaldi.list

# Last Verified: DYYYYMMDDTHHMMSSZ
# 1.
VIVALDI