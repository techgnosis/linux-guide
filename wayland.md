A "stacking" or "floating" window manager (WM) is what you are used to in macOS and Windows. Windows "float" on the desktop and you move windows around with your mouse or with keyboard short-cuts. You can "stack" windows on top of one another.

The alternative is a "tiling" window manager that always uses the full size of the screen by always giving a new window "half" of the screen, which splits halfs into new halfs as you add more windows.

Outside of the major desktop environments like KDE and GNOME, stacking WMs are not popular. Independent developers overwhelmingly prefer to create tiling WMs, which I personally do not like. This page is about the few stacking WMs that I can find

The list is:
* wayfire
* labwm
* hikari
* weston

Weston is the "reference" Wayland compositor and behaves very well IMO. However, weston gives me a variety of issues when using Steam. If you don't use Steam then Weston is pretty close to perfect.

Wayfire, Hikari, and labwm all use a common framework called "wlroots". labwm, hikari, and wayfire have to be built and installed via the AUR.

Wayfire aims to be visually impressive. It uses a single INI-style config file. It includes `wf-shell` which adds a lot of UI on top of the WM itself.

labwm aims to be a clone of openbox. openbox uses a very obscure XML-based config file format which I'm not too keen on. However, you do not have to define any user config files to use labwm, which I like. It has default behavior from the system-level config files. It has a clearly defined "scope" document which helps it not become bloated and remain a useful and minimal WM.

Hikari is meant for FreeBSD but it works on Linux. It is a "stacking and tiling hybrid" WM. The manpage seems a bit convoluted.