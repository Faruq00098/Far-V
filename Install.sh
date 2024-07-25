#!/bin/bash

white='\033[0;37m'
NC='\033[0m'
clear
printf '\033]2; INSTALLER\a'
echo -e "Press \e[1;33many key\e[0m to install the script..."
read -n 1
clear

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$DIR" != "/root/farV" ]]
then
        echo -e "I will try to install it for you..."
        sleep 4
        if [[ -d /root/farV ]]
        then
                rm -r /root/farV
        fi
        mkdir /root/farV
        cp -r "$DIR"/* /root/farV
        chmod +x /root/farV/install.sh
        #gnome-terminal -- bash -c "sudo /root/autoxploit/install.sh; exec >
fi
echo -e "Installing Far-V..."
sleep 1
echo -e "Fixing permissions..."
sleep 2
chmod +x /root/farV/farV.sh
clear
echo -e "Copying script to /bin/reconX"
cd /root/farV
cp /root/farV/farV.sh /bin/farV
clear
while true
do
        clear
        echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling t>
        echo -e "Only use 'i' for the first time."
        read UORI
        if [[ "$UORI" = "u" ]]
        then
                clear
                echo -e "This feature is currently under construction.."
                sleep 3
        elif [[ "$UORI" = "i" ]]
        then
                clear
                BASHCHECK=$(cat ~/.bashrc | grep "/bin/farV")
                if [[ "$BASHCHECK" != "" ]]
                then
                        echo -e "I SAID USE i ONLY ONE TIME..........."
                        sleep 3
                        break
                fi
                echo -e "Adding Recon-X to PATH so you can access it from a>
                sleep 1
                export PATH=/bin/:$PATH
                sleep 1
                echo "export PATH=/bin/farV:$PATH" >> ~/.bashrc
                sleep 1
                clear
                break
        fi
done
clear
echo -e "${White}Installing Dependencies.."
sleep 0.1
echo -e "${White}Installing Curl"
sudo apt install curl
clear
sleep 1
echo -e "Installation is finished. Type 'farV' to launch the script after>
sleep 0.5
echo -en "Starting farV"; sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en ".>
sudo farV