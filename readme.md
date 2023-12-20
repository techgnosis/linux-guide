These are notes collected while running Arch and Void.

# Install
Both Arch and Void have very similar [install](install.md) procedures. Void can use musl for it's C library which makes the install process shorter than when using glibc.


# Package managers
You need to use the package manager in order to do the installs  
[pacman](pacman.md)  
[xbps](xbps.md)

# Booting
See the [UEFI notes](uefi.md)

# sudo
First thing to do is give your user [sudo](sudo.md) access

# Network
Once booted, you need to get on the [network](network.md)

# runit
If you are using Void, it uses the [runit](runit.md) init system and service manager

# Daemons
Learn how to [daemonize](daemon.md) most anything

# D-Bus
[D-Bus](dbus.md) seems like a core part of desktop Linux that can't be avoided, so learn to appreciate how lean it actually is

# Pipewire
Once you have D-Bus, you can have some sound with [pipewire](pipewire.md)

# seatd
[seatd](seatd.md) manages access to the graphics devices and input devices so your display server can run unprivileged

# sway
Now that you have seat management, you can run [sway](sway.md) as your desktop environment

