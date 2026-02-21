The kernel detects devices. When it does, it emits a "uevent". mdev listens for those events and then creates nodes in /dev and may also run scripts.

It might be technically optional.
