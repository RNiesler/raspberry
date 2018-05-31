FROM rniesler/rpi-scratch

RUN apk update && apk add samba samba-common-tools
COPY start.sh /usr/bin/start.sh
ENTRYPOINT ["/usr/bin/start.sh"]

MAINTAINER Rafal Niesler <rniesler@gmail.com>
