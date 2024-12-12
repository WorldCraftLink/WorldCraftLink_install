#!/bin/bash

# Display the updated ASCII Art logo with author and updated date
echo -e "\033[1;37m 
            Do you want to install the Daemon? (yes/no)


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
\033[0m"
read answer

# Check if the script is being run as root
if [ "$answer" != "yes" ]; then
    echo -e "\033[1;31m> Installation aborted."
    exit 0
fi

# Thanks to WorldCraftLink Labs 
echo -e "\033[1;32m> A Huge thanks to the WorldCraftLink Labs team for creating the Daemon! We appreciate your hard work and dedication.
\033[0m"

sleep 5
# Install necessary packages
echo -e "\033[1;34m[INFO] Installing dependencies...\033[0m"
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y nodejs git & sudo apt install -y git npm curl
if [ $? -ne 0 ]; then
    echo -e "\033[1;31m[ERROR]> Failed to install dependencies.\033[0m"
    exit 1
fi

# Clone the repository and enter the directory
echo -e "\033[1;34m[INFO] Cloning WorldCraftLink Daemon repository...\033[0m"
git clone https://github.com/WorldCraftLink/Daemon || { echo -e "\033[1;31m[ERROR] Failed to install the panel this is delete the web.\033[0m"; exit 1; } 
mv Daemon WorldCraftd
cd WorldCraftd/ || { echo -e "\033[1;31m[ERROR] Failed to enter the WorldCraftd directory.\033[0m"; exit 1; }
vi config.json #:q1
npm install
clear

echo -e "\033[1;34m[INFO] Use this first cmd { cd WorldCraftd/ }\033[0m"
echo -e "\033[1;34m[INFO] Get your Panel's access key from the WorldCraft panel's config.json file and set it as 'remoteKey'. Do the same for the other way, set your WorldCraftd access key and configure it on the Panel\033[0m"
echo -e "\033[1;32m[INFO] You done use this cmd { node . }\033[0m"
