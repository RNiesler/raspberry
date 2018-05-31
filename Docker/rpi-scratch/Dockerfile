FROM scratch
ADD alpine-minirootfs-3.7.0-armhf.tar /

RUN apk update && \
apk upgrade && \
apk add bash && \
rm -rf /var/cache/apk/*

CMD ["/bin/bash"]

MAINTAINER Rafal Niesler <rniesler@gmail.com>
