My machine just has a single NIC which is attached to a gateway with a DHCP server

I would ideally like to just run a single command to get my NIC an IP address from the server

Or, I could just assign myself an IP manually? Why do I need to get an IP from the DHCP server? I know the subnet and I'm the only other device on it.

ip address add 192.168.1.200/24 broadcast *broadcast_address* dev *device*

The + argument to `broadcast` automatically determines broadcast address from the IP and subnet mask

`ip address add 192.168.1.200/24 broadcast + dev enp0s31f6`

`ip link set dev enp0s31f6 up`

`ip route add 0.0.0.0/0 via 192.168.1.1`

resolv.conf

```
search Home
nameserver 192.168.1.1
```