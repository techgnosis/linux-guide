MIDI devices show up at /dev/snd/midi*

If you don't have a hardware device then you can create some virtual devices

modprobe snd-virmidi

This creates devices at /dev/snd/midi*

# synth

fluidsynth
soundfont-fluid

fluidsynth \
--audio-driver pipewire \
--midi-driver alsa_seq \
--portname FLUID \
--quiet \
--server \
--no-shell \
/usr/share/soundfonts/FluidR3_GM.sf2

fluidsynth is communicating with pipewire directly while receiving MIDI on an ALSA device called FLUID.

# aconnect

You can run `aconnect -l` to list out the input and output MIDI devices. 

Then run, for example, `aconnect 24:0 128:0` to connect the virtual output to the FLUID input.
