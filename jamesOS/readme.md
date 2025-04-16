# jamesOS

Barebones nspawn environment. Only what is neeed to launch OS containers. A new era!
https://wiki.archlinux.org/title/Systemd-nspawn



it's the TTYs I think
do not bind /dev/shm. its a shared memory filesystem and your container can have its own.
experiment with `ostree init` before the pacstrap


theory -
i may need to do something with ttys and not having so many agettys
if i do tty0 and tty7, i will get a file not found
if i do tty0 and tty2
if i do tty0 and tty1 then it uses tty1 and it borks my system. this tells me that it tries to use tty1 because tty1 is in use and it borks my machine
if i drop tty0 i get an error specific to tty0