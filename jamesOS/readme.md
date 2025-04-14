# jamesOS

Barebones nspawn environment. Only what is neeed to launch OS containers. A new era!
https://wiki.archlinux.org/title/Systemd-nspawn
`pacstrap -K /mnt base linux linux-firmware micro intel-ucode efibootmgr sudo`


Flatpak to be used at user level. Home is a dedicated disk.

Primary container:
Wayland only, COSMIC
NO xwayland
Pipewire w/ pulse
Podman
All user level, no system flatpaks
User Flatpak overrides to prevent direct device access. NOT allowed


Firefox - Flatpak
Flatseal - Flatpak
Copper Wire - Flatpak



1x 1TB drives
Mount 256 as /home


Have a dedicated script that clears out a specific directory and installs a new file tree into it

TASK - pacstrap containers need DHCP