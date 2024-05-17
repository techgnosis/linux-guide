These are notes I collected while running Arch and Void on my desktop. These notes are for me and they are not particulaly presentable.

Flatpak is by far the best way to run serious applications in any distribution, so this guide will focus on building a system that focuses on Flatpak.

# Install
Both Arch and Void have very similar [install](install.md) procedures. Void can use musl for it's C library which makes the install process shorter than when using glibc.


# Package managers
You need to use the package manager in order to do the installs  
[pacman](pacman.md)  
[xbps](xbps.md)

# Booting
Boot from [UEFI Boot Manager](uefi.md) instead of a traditional boot loader like GRUB

# sudo
First thing to do is give your user [sudo](sudo.md) access

# Network
Once booted, you need to get on the [network](network.md)

# runit
If you are using Void, it uses the [runit](runit.md) init system and service manager

# Daemons
Learn how to [daemonize](daemon.md) your user services

# D-Bus
[D-Bus](dbus.md) is core part of even the leanest desktop Linux

# Pipewire
Once you have D-Bus, you can have some sound with [pipewire](pipewire.md)

# seatd
[seatd](seatd.md) manages access to the graphics devices and input devices so your display server can run unprivileged

# sway
Now that you have seat management, you can run [sway](sway.md) as your desktop environment

# Hotkeys
Now that you are in sway, it would be good to study your [hotkeys](hotkeys.md)