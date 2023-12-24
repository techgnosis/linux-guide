ALSA is still the kernel-level sound system. Pipewire does not replace ALSA in any way.
the sound hardware is already configured since ALSA is a kernel-level framework

You can interact with ALSA managed cards directly with `pacman -S alsa-utils`

everything that pipewire does depends on ALSA so its worth understanding. you only need to understand ALSA and pipewire

if an application only speaks pulseaudio, you need to install `pacman -S pipewire-pulse` which will start a dedicated process that hosts the pulseaudio interface but actually sends the audio to pipewire

if an app uses SDL then I think you can set variables to tell SDL what backend to use


if an application knows how to use ALSA, you do not need pipewire or pulseaudio or jack. you can just talk directly to ALSA
however, if you have an application that only speaks ALSA but you want the audio to go through pipewire anyway, you can install `pipewire-alsa` which creates an ALSA device called `pipewire`. If you target that device with an ALSA app then the sound is actually piped into pipewire and you can redirect it as you so fit

we need some tools to interact with the sound cards


you can list devices with `aplay -L`

you can use `speaker-test` to make some sound. i can't figure out the format for a device ID

aplay -L
use `-D plughw:#,#`


