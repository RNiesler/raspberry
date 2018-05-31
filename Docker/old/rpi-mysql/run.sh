#!/bin/bash
docker run -p 3306:3306 -v /data:/data -d rniesler/rpi-mysql /usr/bin/mysqld --datadir=/data/mysql --user=mysql
