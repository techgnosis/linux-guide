# make the wireguard device
ip link add dev wg0 type wireguard

# add an IP (this IP is only seen in the wireguard network)
ip address add 172.16.0.1/24 dev wg0

# install wireguard tools package
pacman -S wireguard-tools

# generate private key
wg genkey > private

# set wireguard interface to use that key
wg set wg0 private-key ./private

# set the peer
wg set wg0 peer public_key endpoint ip:port allowed-ips cidr_range

# note - allowed-ips MUST be set on all peers (in my experience)
# endpoint does not need to be set on all peers. just set it on the internet accessible ones
# peer obviously must be set

# set the listen port
wg set wg0 listen-port 51820

# enable the interface
ip link set wg0 up


# set ip forwarding on the outbound machine
sysctl -w net.ipv4.ip_forward=1

These rules are allegedly the rules to allow a Linux host to forward packets through a different interface

iptables -t filter -A INPUT -i wg0 -j ACCEPT
iptables -t filter -A FORWARD -i wg0 -o ens4 -j ACCEPT
iptables -t filter -A FORWARD -o wg0 -i ens4 -j ACCEPT
iptables -t nat -A POSTROUTING -o ens4 -j MASQUERADE

# route rule, if it gets messed up
172.16.0.0/24 dev wg0 proto kernel scope link src 172.16.0.1

# this works and is simpler
172.16.0.0/16 dev wg0

I need to figure out my routing rule. If I send 0.0.0.0/0 through wg0 then I can't find the peer over the internet



