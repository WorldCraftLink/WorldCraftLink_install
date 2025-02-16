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
echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}This create a free host server, minecraftb server or etc${NC}"
    sleep 5
    echo -e "${BOLD}${BLUE}[INFO] ${DISABLE}Select an option:${NC}"
    echo -e "▶ 1 ${BOLD}${WHITE}| Install Puffer Panel${NC}"
    echo -e "▶ 2 ${BOLD}${WHITE}| Install Hydra Panel${NC}"
    echo -e "▶ 3${BOLD}${WHITE} | BACK${NC}"
    read option_hostserver
        if [ $option_hostserver -eq 1 ]; 
            
        elif [ $option_hostserver -eq 2 ]; then
        
               else
          echo -e "${BOLD}${RED}[ERROR] ${DISABLE}Invalid option selected.${NC}"
   fi