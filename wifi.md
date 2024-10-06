WiFi is super easy now. Use `iwd`

`pacman -S iwd`

You can connect with one command

`iwctl --passphrase <passphrase> station <station> connect <ssid>`

Or you can open an iwctl shell with just `iwctl`

That command only connects you physically to the wireless network. You still need to get an IP however you want to do it

You can create configuration files to start an AP with pre-configured settings
man iwd.ap

