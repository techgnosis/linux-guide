Use an nspawn file
Put it in /etc. Do not put it in /var/lib/machines/. Privileged options are only avaialable if the file is in /etc.

DeviceAllow=auto is the default. It allows all devices. You can just skip using any DeviceAllow directives.
You still need to Bind your device nodes.