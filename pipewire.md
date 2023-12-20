pipewire package

pipewire is a User unit file so you won't see it unless you do `systemctl --user`

use `wpctl` to control wireplumber

i didn't see any audio devices until i installed `pipewire-audio`

i installed `pipewire-alsa` but I don't think I needed to do that unless I was going to use an audio app that was a native ALSA app, which I suspect is pretty rare. I only need to install `pipewire-pulse` if I'm going to use native pulsa-audio apps.

can use `pw-play` to play a .wav file to test
can use `pw-record` to record a .wav file

use `wpctl set-default` to pick your audio devices


---
`xbps-install pipewire`

`usermod --append --groups audio james`

it works!
you can just run `pipewire` and then `wireplumber` and then `wpctl status` actually shows devices
