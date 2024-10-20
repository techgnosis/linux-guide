do this FIRST. don't do shit as root.

```
useradd -m james
passwd james
```

make a `james` file at `/etc/sudoers.d`
inside is
```
james ALL=(ALL:ALL) ALL
```
