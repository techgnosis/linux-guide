# auditd

auditctl -a always,exit \
-F arch=b64 \
-F dir=/etc/ \
-F perm=wa \
-k etc_changes

auditctl -w /etc/ -p w -k etc_changes


auditctl -l



sudo ausearch -k etc_changes

i think i want syscall 257, openat
