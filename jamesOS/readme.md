# containerOS

Barebones nspawn environment. Only what is neeed to launch OS containers.
https://wiki.archlinux.org/title/Systemd-nspawn

* file trees on disk as OS image
* ostree to track changes
* systemd-nspawn to run a system container



it's the TTYs I think
theory -
i may need to do something with ttys and not having so many agettys
if i do tty0 and tty7, i will get a file not found
if i do tty0 and tty2
if i do tty0 and tty1 then it uses tty1 and it borks my system. this tells me that it tries to use tty1 because tty1 is in use and it borks my machine
if i drop tty0 i get an error specific to tty0