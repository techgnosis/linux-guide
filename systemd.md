systemd suite does a lot. what is it doing for me in my particular arch install?


* init
* system services
* user services
* mounting fstab entries
* logging for all services
* creates nodes in /dev
* session management including dbus and xdg_runtime_dir


`systemctl list-unit-files --no-pager`

`systemctl cat` will print the unit file contents

`systemctl mask` to permanently disable the unit

`systemctl status` will show you what launched the unit
