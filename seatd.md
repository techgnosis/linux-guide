seatd has a socket called `/run/seatd.sock`

That socket is owned by the `_seatd` group

`usermod --append --groups _seatd james`


https://dvdhrm.wordpress.com/2013/08/24/session-management-on-linux/