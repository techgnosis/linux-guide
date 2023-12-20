Arch uses `mkinitcpio`

mkinitcpio \
--config /etc/mkinitcpio.conf
--kernel 6.6.2-arch1-1 \
--generate path_to_new_img

There's really only one section of mkinitcpio.conf and that is HOOKS. They are just named "modules" that run and build parts of the cpio archive. Things like "filesystems" and "udev".

mkinitcpio --listhooks
mkinitcpio --hookhelp hook


in Arch its a zstd compressed cpio archive

file starts off as .img
file says its a zstd file
mv file.img file.zst
unzstd file.zst

This generates a cpio archive that is the same size on disk as the one that Arch generated for me during install!

cpio --extract --file file
that will unpack to current directory
its a file system, as expected

The files in `/etc/mkinitcpio.d/` are like templates for initramfs images. There is a file for every line of kernels that is installed.
You do NOT need to use them. You can run the command on your own, as seen above, and it makes a byte identical image.

https://wiki.archlinux.org/title/Mkinitcpio