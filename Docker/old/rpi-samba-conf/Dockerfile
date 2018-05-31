FROM rniesler/rpi-samba

COPY smb.conf /etc/samba/smb.conf
RUN mkdir /data
RUN adduser -D samba
RUN adduser -D rniesler
RUN adduser -D ania
COPY passwords/passdb.tdb /var/lib/samba/private
COPY passwords/secrets.tdb /var/lib/samba/private

EXPOSE 138/udp
EXPOSE 139
EXPOSE 445
EXPOSE 445/udp
MAINTAINER Rafal Niesler <rniesler@gmail.com>
