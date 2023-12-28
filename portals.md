Applications in Flatpaks are containerized and so don't have access to things like the full filesystem, or devices, etc. Instead, Flatpaks can use D-Bus and communicate with a process called `xdg-desktop-portal`, which acts as a "portal" to the system for containerized devices. `xdg-desktop-portal` is just the frontend, however. Portals have "backends" that implement some or all of the portal APIs. 

Usage of portals has grown beyond the scope of Flatpaks and Snaps. Now applications like Firefox use portals as a way to guarantee that you get "native" UI elements like file choosers. For example, Firefox is built with GTK, but what if you want a QT native file picker when Firefox is running in KDE. You can use a portal API, which in theory should have a KDE portal backend that implements the portal API. This will remain true for all desktops and has become a sort of universal platform for actions that need a human to click or choose something.

In fact it goes even farther than that. The `gtk3` Arch package itself has a dependency on `xdg-desktop-portal`. The GtkFileChooserNative API relies on the portal to bring up the native file chooser.

Portals are here to stay, so learn to love them.


http://who-t.blogspot.com/2021/08/flatpak-portals-how-do-they-work.html
https://www.bassi.io/articles/2023/05/29/configuring-portals/
https://flatpak.github.io/xdg-desktop-portal/docs/portals.conf.html


If you want to write your own backend, you should be able to do it with any language that you can communicate with D-Bus with. Python has a D-Bus API that might make that easy to do.
https://flatpak.github.io/xdg-desktop-portal/docs/portal-interfaces.html#