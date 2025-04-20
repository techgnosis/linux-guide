systemd suite does a lot. what is it doing for me in my particular arch install?


* init
* system services
* user services
* mounting fstab entries
* logging for all services
* creates nodes in /dev
* session management including dbus and xdg_runtime_dir


`systemctl list-unit-files --no-pager`

`systemctl cat unit` # do not use "show", it is way too verbose. it shows all possible systemd parameters for the unit and that's a long list

`systemctl mask` to permanently disable the unit

`systemctl status` will show you what launched the unit