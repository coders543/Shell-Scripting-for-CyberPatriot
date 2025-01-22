#!/bin/bash 
sudo apt upgrade 
sudo apt update 
sudo apt install libpam-cracklib # this is to enforce a good password policy 
sudo find / -iname "*.mp3" 2>/dev/null;  # fix this line make it so it removes each file 
sudo ufw default reject incoming 
sudo ufw default allow outgoing # these are best practices for cyberpatriot 
sudo passwd -l root # locks the root account 
sudo chmod 640 /etc/shadow 
sudo chmod 640 /etc/group
sudo chmod 640 /etc/passwd 
sudo chmod 640 /etc/sudoers 
sudo chmod 640 /var/www 
# these change the permissoins to secure the important files 
 sudo sed -i 's^/PermitRootLogin .*/PermitRootLogin no/' /etc/ssh/sshd_config # -i means change in place. 's means substitute. sed 's/orginal word/new word to subin' file to sub in
 # ^ represents beginning of the line .* represents everyting after PermitRootLofin 
 sudo sed -i 's^/PASS_MIN_DAYS .*/PASS_MIN_DAYS 2/' /etc/login.defs # replaces min_days for password with 2. 
sudo sed -i 's^/net.ipv4.tcp_syncookies .*/net.ipv4.tcp_syncookies 1/' /etc/sysctl.conf # change the syncookies to 1 to resist syn flood 
sudo sed -i 's^/net.ipv4.conf.default.rp_filter .*/net.ipv4.conf.default.rp_filter 1/' /etc/sysctl.conf 
sudo sysctl --system # this is to update the settings for this. 
