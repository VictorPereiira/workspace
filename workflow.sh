#!bin/bash

# Install minimun desktop Ubuntu 
# Marck option Att and Install drivers 
# Install languages and Keyboard settings
# Remove desnecessary snaps

# Remove apt blocks 
sudo rm /var/lib/dpkg/lock-frontend ; 
sudo rm /var/cache/apt/archives/lock ;
sudo apt update

# Ubuntu Extensions
# 1. multi monitor	
# 2. sound input & output device chooser
 
# Install packages and dependences	
sudo apt install git -y 
 
# Install web and call apps
sudo snap install brave
sudo snap install discord
sudo snap install zoom-client
sudo snap install slack --classic 

# Install dev apps
sudo snap install postman 
sudo snap install code --classic

# Install nvm and node
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash ;

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" ;

nvm install node ;

# Update Sistem
sudo apt update 
sudo apt dist-upgrade -y 
sudo apt autoclean -y 
sudo apt autoremove -y 


















