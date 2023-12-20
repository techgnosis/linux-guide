Linux is fun because it's transparent and modular. You have great visibility into almost every piece of the OS, and almost every piece can be swapped out or not used. It's fun to drop as many parts as possible while still maintaining usability.


* No bootloader. Use UEFI directly
* No network manager. You can use `ip` directly and script it out, and set your own route table and `resolv.conf`
* No session manager. You can run your own services and you can maintain your own XDG and DBUS variables
* No DE. You can use a single unprivileged Wayland compositor like `sway`
* No polkit. Everything works fine without it. It's not hard to type `sudo`
* No systemd. I'm not against it, it's just too useful and that's not what I'm trying to do. It's not fun.



Some random
elogind still relies on polkitd so avoid elogind

XDG Desktop Portals rely on dbus so dbus can't be avoided
Pipewire also requires dbus so it definitely cannot be avoided
Sway seems to use dbus and that guy is a hard core minimalist so dbus must be OK

Darn. Flatpak relies on polkit


Use seatd for sway