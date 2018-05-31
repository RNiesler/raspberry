FROM rniesler/rpi-scratch

RUN apk update && apk add mysql mysql-client
RUN mkdir /run/mysqld
RUN chown -R mysql:mysql /run/mysqld
COPY entrypoint.sh /entrypoint.sh

VOLUME /var/lib/mysql
EXPOSE 3306
