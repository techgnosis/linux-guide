the docs just have

`pacstrap -K /mnt base linux linux-firmware`

but you should do

`pacstrap -K /mnt base linux linux-firmware micro intel-ucode efibootmgr sudo`

* `micro` provides a text editor whne finishing the install
* `intel-ucode` provides microcode updates for when you are configuring your kernel boot flags
* `efibootmgr`

Install them during the `pacstrap` step because you are already on the internet

