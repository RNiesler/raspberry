FROM resin/rpi-raspbian:stretch

# instructions from https://pimylifeup.com/raspberry-pi-owncloud/

RUN usermod -a -G www-data www-data
RUN apt-get update
RUN apt-get install nginx openssl ssl-cert php7.0-cli php7.0-sqlite php7.0-gd php7.0-common php7.0-cgi sqlite3 php-pear curl libapr1 libtool curl libcurl4-openssl-dev php7.0-xml php7.0 php7.0-dev php7.0-curl php7.0-gd php7.0-fpm memcached php7.0-memcache php7.0-zip php7.0-intl php7.0-mbstring varnish

COPY cert.pem /etc/nginx
COPY cert.key /etc/nginx

RUN chmod 600 /etc/nginx/cert.pem /etc/nginx/cert.key

RUN sh -c "echo '' > /etc/nginx/sites-available/default"
