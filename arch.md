##Packages  
gcc virtualbox-guest-utils  
##VirtualBox  
pacman -Syu virtualbox-guest-utils  
  
##Add User  
$ visudo  
%wheel ALL=(ALL) ALL  
$ useradd -m -G wheel -s /bin/bash agi  
$ passwd userOne  
$ useradd -r -s /usr/bin/nologin user0ne  
Changing user login names  
$ usermod -l newname oldname  
Changing user's home dir  
$ usermod -d /new/home/dir -m user0ne  
Test if sudo works by entering the command  
$ sudo whoami  
  
/etc/ssh/sshd_config  
Port 1234  
PermitRootLogin no  
AllowUsers jim  
  
$ service ssh reload  