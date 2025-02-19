#!/bin/bash
clear

# Custom 
NC="\033[0m"
BOLD="\033[01m"
DISABLE="\033[02m"

#Coler
BLUE="\033[1;34m" #ONLY INFO
RED="\033[0;91m" #ONLY 
DARKGREY="\033[90m"
WHITE="\033[37m"

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
echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}A Huge thanks to the WorldCraftLink team for creating the FreeVPS! We appreciate your hard work and dedication.${NC}"
sleep 2

# Install necessary packages
echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Installing dependencies...${NC}"
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
echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Cloning FreeVPS repository...${NC}"
wget https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/FreeVPS/Freevps_install.sh && pwd
sleep 10
nano Freevps_install.sh
chmod +x Freevps_install.sh

echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Copy this cmd and wait to install is done and paste the cmd and pick [1]${NC}"
echo -e "${DARKGREY}————————————————————————————————${NC}
su && apt update && echo $LD_AUDIT && unset LD_AUDIT"
echo -e "${DARKGREY}And open your note and Copy this cmd you done paste this and you do next is paste this cmd${NC}
apt update
apt install neofetch 
apt install wget nano curl -y
${DARKGREY}————————————————————————————————${NC}"
sleep 20
./Freevps_install.sh