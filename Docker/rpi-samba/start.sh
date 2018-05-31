#!/bin/sh
/usr/sbin/nmbd 
/usr/sbin/smbd
tail -f /var/log/samba/log.*
