```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
cat ~/.ssh/id_rsa.pub
ssh-rsa BBBB3NzaC1yc2EAAA...
ssh john@1.2.3.4
ssh integra
#check
awk '{print $2}' ssh_host_rsa_key.pub | base64 -d | sha256sum -b | awk '{print $1}' | xxd -r -p | base64

scp username@hostname:/path/to/remote/file /path/to/local/file

/etc/ssh/ssh_config
Protocol 2

groupadd sshusers
usermod -a -G sshusers agi
AllowGroups sshusers