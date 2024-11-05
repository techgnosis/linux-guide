# tuned
"tune" daemon

Power tuning. The work used to be done by `power-profiles-daemon`. `tuned` has a shim process called `tuned-ppd` that ppd clients can talk to directly and it will translate into tuned.

Interact with tuned with `tuned-adm`

```
$ tuned-adm profile_mode
Profile selection mode: manual
```

I think its set to manual because you interact with it via GNOME UI


https://fedoraproject.org/wiki/Changes/TunedAsTheDefaultPowerProfileManagementDaemon