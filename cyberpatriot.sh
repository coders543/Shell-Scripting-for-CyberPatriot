#command s saves these changes to git and then push after 
#!/bin/bash this is a shebang and tells us what shell is used 
sudo apt upgrade 
sudo apt update 
sudo find / -iname "*.mp3" 2>/dev/null;  # fix this line make it so it removes each file  
# this next part is specific functions 
main(){
    firewall_stuff 
    echo "executing everything in this order: 
    firewall_stuff 
    Kernel_hardening" 
}
firewall_stuff() { 
    sudo ufw default reject incoming 
    sudo ufw default allow outgoing 
    echo "Firewall stuff is done" 
}
kernel_updates() { 

}
file_permissions(){ #make this less bruteforce later main sensitive files to check 
    sudo chmod 640 /etc/shadow 
    sudo chmod 640 /etc/group
    sudo chmod 640 /etc/sudoers
    sudo chmod 640 /var/www
    sudo chmod 640 /etc/passwd 
}
user_audting() { 
    sudo apt install libpam-cracklib # this is to enforce a good password policy 
    sudo passwd -l root # locks the root account  
    sudo sed -i 's^/PASS_MIN_DAYS .*/PASS_MIN_DAYS 2/' /etc/login.defs # replaces min_days for password with 2.
    #look into nullok tomorrow 
    sudo sed -i 's^/net.ipv4.tcp_syncookies .*/net.ipv4.tcp_syncookies 1/' /etc/sysctl.conf # change the syncookies to 1 to resist syn flood 
    sudo sed -i 's^/net.ipv4.conf.default.rp_filter .*/net.ipv4.conf.default.rp_filter 1/' /etc/sysctl.conf 
    sudo sysctl --system # this is to update the settings for this. 
}
root_login(){
 sudo sed -i 's^/PermitRootLogin .*/PermitRootLogin no/' /etc/ssh/sshd_config # -i means change in place. 's means substitute. sed 's/orginal word/new word to subin' file to sub in
 # ^ represents beginning of the line .* represents everyting after PermitRootLofin  

}
