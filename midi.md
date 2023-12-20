`pacman -S alsa-utils`

that gave me `aconnect` which lets me see proof that my UM-ONE is picked up

OK, pipewire does in fact handle MIDI devices

Use `pw-link --input` and `pw-link --output` to see inputs and outputs, and then you can link an output with an input

`pw-link --links --id`