all of these are explicit installs

during install -
* micro
* intel-ucode
* efibootmgr
* doas

post install -
* niri
* flatpak
* xdg-desktop-portal
* xdg-document-portal
* pipewire
* wireplumber
* pipewire-pulse


dependencies -
* flatpak installs xdg-dbus-proxy which installs dbus
* flatpak installs fuse3 so there's no reason not to install xdg-document-portal





# LEARNING IT
It looks like Alpine does not configure anything upon the start of the live image.

ip address add 192.168.1.200/24 broadcast + dev enp0s31f6
ip link set dev enp0s31f6 up
ip route add 0.0.0.0/0 via 192.168.1.1


resolv.conf -
nameserver 192.168.1.1


echo "https://dl-cdn.alpinelinux.org/alpine/v3.23/main" >> /etc/apk/respositories

apk add lsblk
apk add gptfdisk

use gdisk to partition. fdisk is from busybox and it can't make GPT tables
EFI System Partition = ef00
gdisk seems mostly the same as fdisk so no problems there

apk add e2fsprogs
mkfs.ext4 /dev/sdb2
apk add dosfstools
mkfs.vfat -F32 /dev/sdb1

mount /dev/sdb2 /mnt
mkdir /mnt/boot
mount /dev/sdb1 /mnt/boot

mkdir /mnt/dev
mount --bind /dev /mnt/dev

mkdir /mnt/proc
mount -t proc /proc /mnt/proc

mkdir /mnt/sys
mount -t sysfs /sys /mnt/sys

mkdir /mnt/etc
cp /etc/resolv.conf /mnt/etc/resolv.conf


mkdir -p /mnt/etc/apk/keys
cp /etc/apk/keys/* /mnt/etc/apk/keys/

cp /etc/apk/repositories /mnt/etc/apk/


REPO="https://dl-cdn.alpinelinux.org/alpine/v3.23/main"
apk add --root /mnt --initdb --repository $REPO alpine-base

chroot /mnt /bin/ash

apk add linux-lts efibootmgr

exit the chroot

efibootmgr \
--create \
--disk /dev/sdb \
--part 1 \
--label "Alpine" \
--loader vmlinuz-lts \
--unicode ' root=/dev/sdb2 initrd=initramfs-lts initrd=intel-ucode.img loglevel=3'
