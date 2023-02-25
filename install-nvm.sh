#!/usr/bin/env bash

set -eux

NVS_HOME=${NVS_HOME:-"/usr/local/nvs"}

# Install Git
apt-get update
apt-get install -y git

# Clone the NVS repository
git clone https://github.com/jasongin/nvs.git ${NVS_HOME}

# Run the NVS installation script
bash ${NVS_HOME}/nvs.sh install

# Add NVS to shell startup file
echo "export NVS_HOME=${NVS_HOME}" >> ~/.bashrc
echo "[ -s \"\$NVS_HOME/nvs.sh\" ] && . \"\$NVS_HOME/nvs.sh\"" >> ~/.bashrc

# Load NVS into the current shell
export NVS_HOME=${NVS_HOME}
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"

echo "Node Version Switcher has been installed!"
