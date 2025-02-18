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
                      Last Updated: 2024-12-10"
echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}This create a free customdomain name.${NC}"
    echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Select an option:${NC}"
    echo -e "▶ 1 ${BOLD}${WHITE}| Playit.gg${NC}"
    echo -e "▶ 2 ${BOLD}${WHITE}| Cloudflare${NC}"
    echo -e "▶ 3${BOLD}${WHITE} | BACK${NC}"
    read option_CustomDomain
        if [ $option_CustomDomain -eq 1 ]; then
        bash <(curl https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/CustomDomain/playit.gg.sh)
        elif [ $option_CustomDomain -eq 2 ]; then
        bash <(curl https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/CustomDomain/Cloudflare.sh)
        elif [ $option_CustomDomain -eq 3 ]; then
        bash <(curl -s https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/Script.sh)
               else
          echo -e "${BOLD}${RED}[ERROR] ${DISABLE}Invalid option selected.${NC}"
   fi