#!/bin/bash

# Display the updated ASCII Art logo with author and updated date
echo -e "\033[1;37m 
            Do you want to install the panel? (yes/no)


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
echo -e "\033[1;32m> A Huge thanks to the WorldCraftLink Labs team for creating the panel! We appreciate your hard work and dedication.
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
echo -e "\033[1;34m[INFO] Cloning WorldCraftLink Panel repository...\033[0m"
git clone https://github.com/WorldCraftLink/panel || { echo -e "\033[1;31m[ERROR] Failed to install the panel this is delete the web.\033[0m"; exit 1; } 
mv panel worldcraftpanel
cd worldcraftpanel/ || { echo -e "\033[1;31m[ERROR] Failed to enter the worldcraftpanel directory.\033[0m"; exit 1; }
npm install

#Create the seed
echo -e "\033[1;34m[INFO] Create A Seed...\033[0m"
npm run seed || { echo -e "\033[1;31m[ERROR] Failed to find the seed.\033[0m"; exit 1; }
clear

#Create the User
echo -e "\033[1;34m[INFO] Create A User...\033[0m"
npm run createUser || { echo -e "\033[1;31m[ERROR] Failed to create a user.\033[0m"; exit 1; }
node . || { echo -e "\033[1;31m[ERROR] Failed to start the panel.\033[0m"; exit 1; }

echo -e "\033[1;32m[INFO] WorldCraftLink Panel setup complete!\033[0m"
