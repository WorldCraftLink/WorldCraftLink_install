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
echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}This create a free vps${NC}"
    echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Select an option:${NC}"
    echo -e "▶ 1 ${BOLD}${WHITE}| YES"
    echo -e "▶ 2 ${BOLD}${WHITE}| BACK"
    read option_freevps
            
        if [ $option_freevps -eq 1 ]; then
            clear
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
            bash <(curl https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/FreeVPS/Freevps.sh)
        elif [ $option_freevps -eq 2 ]; then
        bash <(curl -s https://raw.githubusercontent.com/WorldCraftLink/WorldCraftLink_install/refs/heads/main/Script.sh)
else
  echo -e "${BOLD}${RED}[ERROR] ${DISABLE}Invalid option selected.${NC}" #FreeVPS
fi