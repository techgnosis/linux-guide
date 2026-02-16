Incus is the OSS replacement for LXD

`incusd` is the daemon
`incus` is the client

`pacman -S incus`

You do not need the user-level unit files.
`sudo systemctl start incus.service`

You MUST do this (I tested making a user container without, it's a must)
`usermod --add-subuids 1000000-1000999999 --add-subgids 1000000-1000999999 root`
This gives a big range of IDs that users in containers can map to. It's exactly 10 million. Don't change the numbers

If you do not do that then you MUST run containers with `security.privileged=true` which means the `root` user in the container is the real root user of the host

You need to add your user to the `incus-admin` group to make containers
`usermod --append --groups incus-admin james`\
`newgrp incus-admin`

Then you can run a container
`incus launch images:image_name/tag container_name`

Then you can enter the container
`incus exec container_name -- bash`

To reiterate - 
If you want to use the system socket and system service, you must use be in incus-admin
