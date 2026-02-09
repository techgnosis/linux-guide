It's easy to ignore a network manager and configure the network yourself

The command format is:
ip address add 192.168.1.200/24 broadcast *broadcast_address* dev *device*

The + argument to `broadcast` automatically determines broadcast address from the IP and subnet mask

```
ip address add 192.168.1.200/24 broadcast + dev enp0s31f6
ip link set dev enp0s31f6 up
ip route add 0.0.0.0/0 via 192.168.1.1
```

resolv.conf

```
nameserver 192.168.1.1
```
