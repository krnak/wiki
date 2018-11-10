##Regular filters
```py
ip.src==192.168.0.0/16 and ip.dst==192.168.0.0/16
smb || nbns || dcerpc || nbss || dns
tcp.port eq 25 or icmp
udp[8:3]==81:60:03
udp contains 81:60:03
http.request.uri matches "gl=se$"
ip.src != xxx.xxx.xxx.xxx && ip.dst != xxx.xxx.xxx.xxx && sip
```
##Gotchas
matches against multiple fields
```py
ip.addr == 10.43.54.65
is eqivalent to
ip.src == 10.43.54.65 or ip.dst == 10.43.54.65

ip.addr != 10.43.54.65
is equivalent to
ip.src != 10.43.54.65 or ip.dst != 10.43.54.65
```

