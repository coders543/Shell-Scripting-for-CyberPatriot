#!/bin/bash 
sudo apt upgrade 
sudo apt update 
sudo ufw default reject incoming 
sudo ufw default allow outgoing # these are best practices for cyberpatriot 
passwd -l root # locks the root account 
chmod 640 /etc/shadow 
chmod 640 /etc/group
chmod 640 /etc/passwd 
chmod 640 /etc/sudoers 
chmod 640 /var/www 
# these change the permissoins to secure the important files 
 sudo sed -i 's/#PermitRootLogin .*/PermitRootLogin no/' /etc/ssh/sshd_config 

