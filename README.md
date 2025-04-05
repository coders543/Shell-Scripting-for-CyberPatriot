# linux_project
🛡️ CyberPatriot Beginner Linux Hardening Script
This Bash script is designed to automate common Linux security practices and system hardening techniques often used in CyberPatriot competitions. It focuses on improving system security by adjusting permissions, locking unnecessary access, enforcing strong password policies, and configuring basic firewall rules.

🔧 Features
System Update & Upgrade

Ensures the system is up to date with the latest patches.

Password Policy Enforcement

Installs libpam-cracklib to enforce strong password creation.

File Removal

Searches for and deletes all .mp3 files as a common point-deduction item in CyberPatriot.

Firewall Configuration

Blocks all incoming connections by default.

Allows all outgoing traffic.

Root Account & File Permissions

Locks the root user.

Restricts permissions on sensitive system files like /etc/shadow, /etc/sudoers, and more.

SSH Security

Disables root login via SSH by editing sshd_config.

Password Aging Policies

Sets a minimum number of days before a password can be changed again.

Kernel Hardening

Enables tcp_syncookies to prevent SYN flood attacks.

Enables rp_filter to prevent IP spoofing.
