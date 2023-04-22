#!/bin/sh
blue='\033[0;36m'
yellow='\033[0;33m'
normal='\033[0m'
clear
echo "${yellow}Updating package...${normal}"
apt-get update
apt-get upgrade
clear

echo "${yellow}Installing screen...${normal}"
apt-get install git wget curl screen
clear

echo "${yellow}Installing DCA bot...${normal}"
if [ -f "$PWD/A-Bot" ]; then
    clear
    echo "${blue}A-Bot is already installed!${normal}"
else
    echo "$(wget 'https://github.com/ZaNDeR6663/A-Bot/raw/main/A-Bot')"
    echo "$(chmod 755 'A-Bot')"
    if ! screen -list | grep -q "abot"; then
        echo "$(screen -S abot)"
        echo "$(screen -x)"
    fi
fi
