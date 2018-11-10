# PROBLEMS
TCP/IP fingerprinting (for OS scan) requires root privileges.
--privileged

# FEATURES

# SOURCE
-iL input_file_name
--exclude host1[,host2[,...]]

# HOST DISCOVERY
1.2.3.4/24 #scans 1.2.3.0 - 1.2.3.255
192.168.3-5,7.1 #will scan the four addresses 192.168.3.1, 192.168.4.1, 192.168.5.1, and 192.168.7.1
-sn #No port scan, ping scan
-sL #list targets
-Pn #skip host discovery, used to be -P0
-PS/PA/PU/PY[portlist] # TCP SYN/ACK, UDP or SCTP discovery to given ports
-PE/PP/PM #ICMP echo, timestamp, and netmask request discovery probes
--traceroute #trace hosts

# PORT SPECIFICATION
-p <ranges> #default 1-1000
-F # fast, scan few ports
--top-ports 10


# SCAN TECHNIQUES
-sU # UDP scan
-sS # TCP SYN scan
-O #OS scan
-sV # open port and probe sw version
-sC # script scan
-T4 # speed up
-A #enable OS detection and other
-n #turns off reverse name resolution
-sV # software version

# OUTPUT
-oN <filename> # normal
-oA <basename> # three major formats
-v, -vv # verbosity up
-d, -dd , press D, # debugging up

# EXAMLES
nmap -vvv -sS -P0 --privileged -oA filename_prefix frode-ng.dcit.cz

[nmap scripting engine](https://nmap.org/book/nse.html)
