wget -P ~/Downloads https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/Downloads/google-chrome-stable_current_amd64.deb
sudo apt --fix-broken install

<<COMMENT

1.) Uncheck "Make default browser" and "Send data" options

COMMENT