#!/bin/bash
docker run -p 138:138/udp -p 139:139 -p 445:455 -p 445:455/udp -v /data:/data -d rniesler/rpi-samba-conf
