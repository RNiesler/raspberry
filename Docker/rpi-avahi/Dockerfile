FROM rniesler/rpi-scratch
MAINTAINER Rafal Niesler <rniesler@gmail.com>

RUN apk add --update avahi && \
    sed -i 's/#enable-dbus=yes/enable-dbus=no/g' /etc/avahi/avahi-daemon.conf && \
    rm -rf /var/cache/apk/*

VOLUME /etc/avahi/services
EXPOSE 5353/udp

ENTRYPOINT ["avahi-daemon"]
CMD []
