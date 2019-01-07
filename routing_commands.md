show interface  
show ip interface  
show running-config  
show startup-config  
  
show ip route  
  
  
  
config terminal  
interface fastEthernet 0/0  
ip address 10.0.1.2 255.255.255.0  
no shutdown  
end  
  
config terminal  
interface fastEthernet 1/0  
ip address 10.0.2.1 255.255.255.0  
no shutdown  
end  
  
  
copy running-config startup-config  
  
router rip  
network 10.0.0.0  
  
no router rip  
  
config terminal  
router igrp 1  
network 10.0.0.0  
end  
  
  
router ospf 1  
network 10.1.1.1 0.0.0.0 area 0  
network 10.1.4.1 0.0.0.0 area 1  
network 10.1.6.1 0.0.0.0 area 0  
  
configure terminal  
router ospf 1  
network 10.0.0.0 0.255.255.255 area 0  
end  
  
#roter ospf (process id)  
#wild mask, 1 = dont care bit  
  
router bgp 1  
neighbor 10.0.1.2 remote-as 1  
  
clear ip bgp address (where address is the neighbor address)  
clear ip bgp * (clear all neighbor connections)  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
