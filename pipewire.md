ALSA is still the kernel-level interface for audio drivers and pipewire uses it. What pipewire replaces is pulseaudio and JACK. Those two audio "servers" (processes that use ALSA) had two different audiences; pulse for consumers and JACK for pros. Pipewire can allegedly do both so now all apps can just target pipewire instead of pulse or jack.
https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/FAQ#does-pipewire-replace-alsa

I think you can install pipewire and have it run without it understanding ALSA. You have to install the pipewire-alsa
https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/Config-ALSA

Here is how it breaks down
https://archlinux.org/packages/extra/x86_64/pipewire/
https://archlinux.org/packages/extra/x86_64/pipewire-audio/
https://archlinux.org/packages/extra/x86_64/pipewire-alsa/


Pipewire and Wireplumber are two distinct processes that must be running at the same time. wireplumber needs a running pipewire. Getting sound working requires both

Pipewire can also do video, so you need to explicitly install the audio package

i didn't see any audio devices until i installed `pipewire-audio`



# Alsa and Pulse
pipewire-alsa, and pipewire-pulse

i installed `pipewire-alsa` but I don't think I needed to do that unless I was going to use an audio app that was a native ALSA app, which I suspect is pretty rare. I only need to install `pipewire-pulse` if I'm going to use native pulsa-audio apps.



Arch
----
pipewire is a User unit file so you won't see it unless you do `systemctl --user`


use `wpctl` to control wireplumber



can use `pw-play` to play a .wav file to test
can use `pw-record` to record a .wav file

use `wpctl set-default` to pick your audio devices
