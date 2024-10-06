#! /usr/bin/bash

sudo ip address add 192.168.1.200/24 broadcast + dev enp0s31f6

sudo ip link set dev enp0s31f6 up

sudo ip route add 0.0.0.0/0 via 192.168.1.1

ping yahoo.com
