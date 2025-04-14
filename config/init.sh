#! /usr/bin/bash

sudo ip address add 192.168.1.200/24 broadcast + dev enp0s31f6

sudo ip link set dev enp0s31f6 up

sudo ip route add 0.0.0.0/0 via 192.168.1.1

sudo bash -c 'echo "search Home" > /etc/resolv.conf'
sudo bash -c 'echo "nameserver 192.168.1.1" >> /etc/resolv.conf'

ping yahoo.com
