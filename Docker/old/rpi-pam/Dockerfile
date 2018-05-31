FROM rniesler/rpi-scratch

RUN apk update && apk add linux-pam
COPY pam_mysql.so /lib/pam_mysql.so
COPY pam-mysql.conf /etc/pam-mysql.conf
