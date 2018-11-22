# SSH
## Commands
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
```
## Config
config in ~ /.ssh/config and /etc/ssh/ssh_config
dcit
```
Host integra
Hostname integra.dcit.cz
User krnak
Host tatra
Hostname tatra.dcit.cz
User krnak
Host tatraSocks
Hostname tatra.dcit.cz
User krnak
DynamicForward 1080
Port 22
```
Bad owner or permissions on /home/agi/.ssh/config
```shell
chown $USER ~/.ssh/config
chmod 600 ~/.ssh/config
```
gimli
```
Host gimli
Hostname gimli.ms.mff.cuni.cz
User krnak
```