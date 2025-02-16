#!/bin/bash
clear
#Coler
BLUE="\033[1;34m" #ONLY INTO
RED="\033[0;91m" #ONLY ERROR
WHITE="\033[37m"
NC="\033[0m"

echo -e "${WHITE}

██╗    ██╗██████╗██████╗██╗    ██████╗ ████████████╗ █████╗███████████████╗
██║    ████╔═══████╔══████║    ██╔══████╔════██╔══████╔══████╔════╚══██╔══╝
██║ █╗ ████║   ████████╔██║    ██║  ████║    ██████╔████████████╗    ██║   
██║███╗████║   ████╔══████║    ██║  ████║    ██╔══████╔══████╔══╝    ██║   
╚███╔███╔╚██████╔██║  ███████████████╔╚████████║  ████║  ████║       ██║   
 ╚══╝╚══╝ ╚═════╝╚═╝  ╚═╚══════╚═════╝ ╚═════╚═╝  ╚═╚═╝  ╚═╚═╝       ╚═╝   
                        ██╗    █████╗   ████╗  ██╗                             
                        ██║    ██████╗  ████║ ██╔╝                             
                        ██║    ████╔██╗ ███████╔╝                              
                        ██║    ████║╚██╗████╔═██╗                              
                        ███████████║ ╚██████║  ██╗                             
                        ╚══════╚═╚═╝  ╚═══╚═╝  ╚═╝                             
                                                                           
                      Author: WorldCraftLink
                      Last Updated: 2024-12-10
${NC}"

# Thanks to WorldCraftLink Labs 
echo -e "${BLUE}[INFO] A Huge thanks to the WorldCraftLink Labs team for creating the panel! We appreciate your hard work and dedication.${NC}"
sleep 2

# Install necessary packages
echo -e "${BLUR}[INFO] Installing dependencies...${NC}"
rm -rf * & ls -a & cat /etc/os-release
apt install nano
apt install wget
apt install curl
clear
if [ $? -ne 0 ]; then
    echo -e "${RED}[ERROR] Failed to install dependencies.${NC}"
    exit 1
fi

# Clone the repository and enter the directory
echo -e "${BLUE}[INFO] Cloning FreeVPS repository...${NC}"
wget https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/FreeVPS/Freevps_install.sh && pwd
sleep 20
nano Freevps_install.sh
sleep 10
chmod +x Freevps_install.sh

echo -e "${BLUE}[INFO] Copy this cmd and wait the install done and paste the cmd
su
apt update
echo $LD_AUDIT
unset LD_AUDIT
apt update
apt install neofetch
apt install wget nano curl -y
${NC}"
sleep 20
./Freevps_install.sh