There are a lot of network managers. Just use systemd.

You have to write your own network file apparently

`/etc/systemd/network/20-wired.network`
```
[Match]
Name=enp0s31f6

[Link]
RequiredForOnline=routable

[Network]
DHCP=yes
```