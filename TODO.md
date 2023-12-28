* Why do I have to run `systemctl --user import-environment WAYLAND_DISPLAY` when I have that variable defined in the unit file? Why does that variable not show when I run `systemctl --user show-environment`?
* ANSWER - I don't know why the Environment field does not work in a user unit file but the answer was `~/.config/environment.d/` that lets you make drop-ins with environment variables in them

* How do I get Snapshot to stop saying it cant find XDG_VIDEOS_DIR?

* How can I get Firefox to open a file browser when I click the icon next to a download? xdg-desktop-portal prints a core dump when I do it

* When is xdg-desktop-portal required for Screenshot and ScreenCast and when is it not? I can run `grim` when xdg-desktop-portal is not running. I think it's because grim uses a Wayland protocol directly but I could be wrong

* How do I get flatpak Firefox to use my camera? I got Firefox to ask for my camera using portal but it can't find the device.