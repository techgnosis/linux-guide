sshd uses a config.d folder. Drop a file with these lines in `/etc/ssh/sshd_config.d`

```
PasswordAuthentication no
PermitRootLogin no
```