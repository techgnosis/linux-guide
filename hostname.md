/etc/hostname is again just a convention. You have to tell the kernel what the hostname is.

Two ways -
There is a syscall called sethostname()

Or you use the `hostname` CLI which of course calls `sethostname()`
