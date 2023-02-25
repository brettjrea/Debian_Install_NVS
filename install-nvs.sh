#!/bin/bash

# update and upgrade packages
sudo apt update -y && sudo apt upgrade -y

# remove unused packages
sudo apt autoremove -y

# install curl
sudo apt install curl -y

# install NVS
git clone https://raw.githubusercontent.com/jasongin/nvs/master/install.sh ~/.nvs
echo 'export NVS_HOME="$HOME/.nvs"' >> ~/.bashrc
echo '[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"  # This loads NVS' >> ~/.bashrc
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

# install latest LTS version of Node.js
nvs add lts
nvs use lts

# Add NVS and Node to the PATH environment variable
echo 'export NVS_HOME="$HOME/.nvs"' >> ~/.bashrc
echo '[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"  # This loads NVS' >> ~/.bashrc
echo 'export PATH="$NVS_HOME/$(nvs which latest)":$PATH' >> ~/.bashrc

# Reload the shell to apply the PATH changes
exec bash
