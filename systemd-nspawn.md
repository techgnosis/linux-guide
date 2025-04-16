Use an nspawn file
Put it in /etc. Do not put it in /var/lib/machines/. Privileged options are only avaialable if the file is in /etc.

use machinectl. its easier to type anyway

DevicePolicy=auto is the default. It allows all devices. You can just skip using any DeviceAllow directives.
You still need to Bind your device nodes.

do not bind /dev/shm. its a shared memory filesystem and your container can have its own.

