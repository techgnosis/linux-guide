Incus is the OSS replacement for LXD after Canonical took it over.

`incusd` is the daemon
`incus` is the client
The runtime is LXC

incus might have a lot of apparmor requirements. disable that stuff.

It should in theory be more user-friendly than machinectl/systemd-nspawn

`pacman -S incus`