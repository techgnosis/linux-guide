this is all the host should ever need. everything else should be in a system container

base
micro
git
less
arch-install-scripts
efibootmgr
intel-ucode
linux
linux-firmware
which


you do not need podman. an OCI image is just a linux file tree like you're creating with pacstrap