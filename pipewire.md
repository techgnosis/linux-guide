Pipewire and Wireplumber are two distinct processes that must be running at the same time. wireplumber needs a running pipewire. Getting sound working requires both

Pipewire can also do video, so you need to explicitly install the audio package

i didn't see any audio devices until i installed `pipewire-audio`


# Alsa and Pulse
pipewire-alsa, and pipewire-pulse

i installed `pipewire-alsa` but I don't think I needed to do that unless I was going to use an audio app that was a native ALSA app, which I suspect is pretty rare. I only need to install `pipewire-pulse` if I'm going to use native pulsa-audio apps.




Arch
----
pipewire is a User unit file so you won't see it unless you do `systemctl --user`

Void
----
Run it yourself with `( pipewire & )`  
`usermod --append --groups audio james`

use `wpctl` to control wireplumber



can use `pw-play` to play a .wav file to test
can use `pw-record` to record a .wav file

use `wpctl set-default` to pick your audio devices


---
`xbps-install pipewire`


it works!
you can just run `pipewire` and then `wireplumber` and then `wpctl status` actually shows devices
