#! /usr/bin/env bash

set -euo pipefail

pacstrap -K /mnt \
base \
linux \
linux-firmware \
micro \
intel-ucode \
efibootmgr \
sudo \
git

cp -r /root/linux-guide /mnt/root/
