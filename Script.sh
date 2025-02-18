#!/bin/bash
clear
#
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
                      Last Updated: 2024-12-10"
echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Select an option:${NC}"
echo -e "▶ 1${BOLD}${WHITE} | Install Free VPS${NC}"
echo -e "▶ 2${BOLD}${WHITE} | Host Server${NC}"
echo -e "▶ 3${BOLD}${WHITE} | Custom Domain${NC}"
read option

if [ $option -eq 1 ]; then
    sleep 1
    bash <(curl https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/InstallSD/FreeVPS_SD.sh)
elif [ $option -eq 2 ]; then
    sleep 1
    bash <(curl https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/InstallSD/HostServer_SD.sh)
elif [ $option -eq 3 ]; then
    sleep 1
    bash <(curl https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/InstallSD/CustomDomain_SD.sh)
      else
   echo -e "${BOLD}${RED}[ERROR] ${DISABLE}Invalid option selected.${NC}"
fi
