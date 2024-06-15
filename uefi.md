UEFI is a specification that states how software can communicate with the firmware on your motherboard. Part of the UEFI specification states that UEFI contains a "Boot Manager" that intends to be "the only boot menu". Due to this, you don't technially need a traditional boot-loader like GRUB. Instead, you can tell the UEFI Boot Manager where to find your kernel and initramfs images and boot straight from the UEFI Boot Manager.

The easiest way to do this is with the `efibootmgr` tool, which lets you manipulate the UEFI Boot Manager from within a Linux environment. This is important because you will need to know things like your disk IDs.

You can also manipulate the UEFI Boot Manager with a tool called `UEFI Shell` which you can boot into from the Arch ISO, but that is a bit harder since you don't have access to `/dev` filesystem that has all your disk IDs. 

If you boot into UEFI Shell, you can run the kernel as an executable since it is built as a "UEFI Application" using EFISTUB
https://wiki.archlinux.org/title/EFISTUB

```
efibootmgr \
--create \
--disk /dev/disk/by-id/xxx \
--part 1 \
--label "Arch" \
--loader vmlinuz \
--unicode ' root=/dev/sda3 initrd=\path-to-initramfs-img'
```

* There MUST be a space in front of the --unicode string
* Do NOT set `root=` to a traditional alphanumeric ID like `/dev/sda2` as those can change and you might boot into the wrong OS
* Some UEFIs MUST have a `\` in front of the initrd path

`efibootmgr -b 000x -B`


https://docs.kernel.org/admin-guide/efi-stub.html

`fwupd` can update UEFI


Coreboot can run Tianocore as a payload. So that means Tianocore provides all the interfaces in the UEFI specification but Tianocore in this case would not interface with the hardware. Tianocore implements all the interfaces via coreboot. I think?

