FROM resin/rpi-raspbian:stretch
LABEL maintainer="rniesler@gmail.com"

# instructions from https://pimylifeup.com/raspberry-pi-owncloud/

RUN usermod -a -G www-data www-data
RUN apt-get update
RUN apt-get install nginx openssl ssl-cert php7.0-cli php7.0-sqlite php7.0-gd php7.0-common php7.0-cgi sqlite3 php-pear curl libapr1 libtool curl libcurl4-openssl-dev php7.0-xml php7.0 php7.0-dev php7.0-curl php7.0-gd php7.0-fpm php7.0-redis php7.0-zip php7.0-intl php7.0-mbstring varnish php7.0-mysql

COPY cert.pem /etc/nginx
COPY cert.key /etc/nginx

RUN chmod 600 /etc/nginx/cert.pem /etc/nginx/cert.key

COPY nginx-default /etc/nginx/sites-available/default
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN mkdir /run/php

RUN sed -i 's/upload_max_filesize =.*/upload_max_filesize = 2000M/' /etc/php/7.0/fpm/php.ini
RUN sed -i 's/post_max_size =.*/post_max_size = 2000M/' /etc/php/7.0/fpm/php.ini
RUN sed -i 's/listen =.*/listen = 127.0.0.1:9000/' /etc/php/7.0/fpm/pool.d/www.conf
#https://doc.owncloud.org/server/10.0/admin_manual/installation/configuration_notes_and_tips.html#php-fpm-tips-label
RUN sed -i 's/;env/env/' /etc/php/7.0/fpm/pool.d/www.conf

RUN apt-get install wget bzip2
RUN mkdir -p /var/www/owncloud && \
 wget https://download.owncloud.org/community/owncloud-10.0.6.tar.bz2 && \
 tar xvf owncloud-10.0.6.tar.bz2 && \
 mv owncloud/ /var/www/ && \
 chown -R www-data:www-data /var/www && \
  rm -rf owncloud owncloud-10.0.6.tar.bz2
RUN sed -i 's/.*php_value upload_max_filesize.*/php_value upload_max_filesize 2000M/' /var/www/owncloud/.htaccess
RUN sed -i 's/.*php_value post_max_size.*/php_value post_max_size 2000M/' /var/www/owncloud/.htaccess
RUN sed -i 's/.*php_value memory_limit.*/php_value memory_limit 2000M/' /var/www/owncloud/.htaccess
RUN sed -i 's/.*upload_max_filesize.*/upload_max_filesize=2000M/' /var/www/owncloud/.user.ini
RUN sed -i 's/.*post_max_size.*/post_max_size=2000M/' /var/www/owncloud/.user.ini
RUN sed -i 's/.*memory_limit.*/memory_limit=2000M/' /var/www/owncloud/.user.ini

EXPOSE 443/tcp
VOLUME /var/www/owncloud/config
ENTRYPOINT php-fpm7.0 && nginx
