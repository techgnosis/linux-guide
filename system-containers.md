LXC was the original system container engine. It had a UI called LXD. Ubuntu was really the only company that ran with the technology so eventually LXD was taken over by Canonical. When that happened, some LXC devs created a project called Incus, which is an OSS LXD. The underlying LXC tech is still distro agnostic.

Another system container engine is systemd-nspawn. It has a management tool (not a GUI) called machinectl. 

machinectl -> systemd-machined -> systemd-nspawn
incus -> incus -> lxc