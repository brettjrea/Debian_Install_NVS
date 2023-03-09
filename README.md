#### Title: "Node.js and Build Tools Installation Guide with Optional OS Upgrades"

1. Optional OS upgrades:
   1. [Upgrade Debian Bullseye to Buster](https://github.com/brettjrea/Debian_Bullseye_Upgrade_Script)
   2. [Upgrade Ubuntu Focal to Jammy](https://github.com/brettjrea/Ubuntu_Jammy_Upgrade_Script)
   
2. Node.js tools:
   1. [Install NVM](https://github.com/brettjrea/Debian_Install_NVM) - Node Version Manager
   2. [Install NVS](https://github.com/brettjrea/Debian_Install_NVS) - Node Version Switcher (added 02/23 it is a cross-platform node based successor/replacement for NVM)
   
3. Build tools:
   1. [Install common build tools.](https://github.com/brettjrea/Debian_Install_Common_Build_Tools)
   
4. Frontends, Backends, and Process Manager:
   1. [Install Strapi.io backend](https://github.com/brettjrea/Debian_Strapi_Backend_API)
   2. [Install Gatsby frontend](https://github.com/brettjrea/Debian_Gatsby_Frontend_Client)
   3. [Install PM2 Process](https://github.com/brettjrea/Debian_Configure_PM2)
---
### Install NVS and NPM LTS on Debian/Ubuntu with Curl and Bash script.

#### This new one fetches a script from this repo which is useful for using inside of another script.

```
sudo apt upgrade -y && sudo apt update -y && sudo apt autoremove -y &&
sudo apt install wget -y &&
sudo apt-get install --reinstall ca-certificates -y &&
wget https://raw.githubusercontent.com/brettjrea/Debian_Install_NVS/main/install-nvs.sh &&
chmod +x install-nvs.sh &&
./install-nvs.sh &&
sudo apt autoremove -y &&
sudo apt clean -y
```


#### This is the same script as a copy-paste oneliner.

```
sudo apt update -y &&
sudo apt upgrade -y && 
sudo apt autoremove -y && 
sudo apt-get install --reinstall ca-certificates -y && 
sudo apt install curl -y && 
curl -o- https://raw.githubusercontent.com/jasongin/nvs/master/install.sh | bash && 
export NVS_HOME="$HOME/.nvs" && 
[ -s "$NVS_HOME/nvs.sh" ] && 
. "$NVS_HOME/nvs.sh" && 
nvs add lts && 
nvs use lts && 
echo "export NVS_HOME="$HOME/.nvs"" >> ~/.bashrc && 
echo "[ -s "$NVS_HOME/nvs.sh" ] && 
. "$NVS_HOME/nvs.sh"" >> ~/.bashrc && 
echo "nvs use lts" >> ~/.bashrc && 
exec bash
```
