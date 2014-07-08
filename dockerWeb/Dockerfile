# Docker Drupal-Adyax
#
#
# VERSION       1
# DOCKER-VERSION        1

# Pull base image.
FROM ubuntu:14.04
#FROM debian:stable
MAINTAINER Adyax version: 0.5
ENV DEBIAN_FRONTEND noninteractive


RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y curl

# Varnish
curl https://repo.varnish-cache.org/ubuntu/GPG-key.txt | apt-key add -
echo "deb https://repo.varnish-cache.org/ubuntu/ precise varnish-4.0" >> /etc/apt/sources.list.d/varnish-cache.list


# MariaDB
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
RUN echo "deb http://ftp.igh.cnrs.fr/pub/mariadb/repo/10.0/ubuntu trusty main" >> /etc/apt/sources.list


ADD mariadb /etc/apt/preferences.d/mariadb


RUN apt-get update

#RUN apt-get upgrade -y


RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing wget curl git python-software-properties python-setuptools vim-tiny nginx drush memcached php5 php-apc php-pear php5-cli php5-common php5-curl php5-dev php5-fpm php5-gd php5-imagick php5-imap php5-intl php5-json php5-mcrypt php5-memcache php5-ming php5-mysql php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl libssh2-php libevent-dev mysql-common libmysqlclient18 redis-server openjdk-7-jdk openjdk-7-jre mariadb-server mariadb-client varnish vim htop slurm


RUN pecl install apc bcompiler geoip gmagick lzf mailparse mongo pdflib rar uploadprogress Xdebug #memcache imagick


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/
RUN mv /usr/bin/composer.phar /usr/bin/composer


# Install Webdis.
ADD webdis/ /var/opt/webdis
RUN cd /var/opt/webdis/ && make

RUN mkdir -p /var/www


# index.html
ADD index.html /var/www/home.html

# memcache.php
ADD memcache.php /var/www/memcache.php


# APC script
ADD apc.php /var/www/apc.php


# Nginx
#RUN echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini
ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx-site.conf /etc/nginx/sites-available/default


ADD ssl/server.crt /etc/nginx/server.crt
ADD ssl/server.key /etc/nginx/server.key

# Varnish
ADD default.vcl /etc/varnish/default.vcl


#phpmyadmin
ADD phpMyAdmin/ /var/www/phpMyAdmin
ADD phpmyadmin.config.inc.php /var/www/phpMyAdmin/config.inc.php


# Solr
ENV SOLR_VERSION 4.9.0
ENV SOLR solr-$SOLR_VERSION
ADD solr-4.9.0/ /var/opt/solr


RUN chown -R www-data:www-data /var/www

RUN apt-get -y -q autoclean && apt-get -y -q autoremove


# Expose ports.

# Nginx
EXPOSE 80
EXPOSE 443

# Varnish
EXPOSE 6081
EXPOSE 6082

# MariaDB
EXPOSE 3306

# Redis
EXPOSE 6379

# Webdis
EXPOSE 7379

# Solr
EXPOSE 8983


ADD start.sh /var/opt/start.sh
RUN chmod +x /var/opt/start.sh
CMD /var/opt/start.sh