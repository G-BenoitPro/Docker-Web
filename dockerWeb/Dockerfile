# docker Drupal-Adyax
#
#
# VERSION       1
# DOCKER-VERSION        1

# Pull base image.
FROM ubuntu:14.04
MAINTAINER Adyax version: 0.1
ENV DEBIAN_FRONTEND noninteractive



#RUN echo "deb ftp://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ trusty main" > /etc/apt/sources.list
#RUN echo "deb-src ftp://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ trusty main" > /etc/apt/sources.list
#RUN echo "deb http://ubuntu-archive.mirrors.free.org/ubuntu/ trusty main" > /etc/apt/sources.list
#RUN echo "deb-src http://ubuntu-archive.mirrors.free.org/ubuntu/ trusty main" > /etc/apt/sources.list

# MariaDB
#RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
#RUN echo "deb http://ftp.igh.cnrs.fr/pub/mariadb/repo/10.0/ubuntu trusty main" > /etc/apt/sources.list


#deb http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ trusty main
#deb-src http://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ trusty main
#deb http://ubuntu-archive.mirrors.free.org/ubuntu/ trusty main
#deb-src http://ubuntu-archive.mirrors.free.org/ubuntu/ trusty main

#deb http://fr.archive.ubuntu.com/ubuntu/ trusty main restricted universe multiverse
#deb http://fr.archive.ubuntu.com/ubuntu/ trusty-updates main restricted universe multiverse
#deb http://fr.archive.ubuntu.com/ubuntu/ trusty-backports main restricted universe multiverse
#deb http://fr.archive.ubuntu.com/ubuntu/ trusty-proposed main restricted universe multiverse
#deb http://security.ubuntu.com/ubuntu/ trusty-security main restricted universe multiverse
#deb http://archive.canonical.com/ubuntu/ trusty partner
#deb http://extras.ubuntu.com/ubuntu/ trusty main


RUN apt-get update

#RUN apt-get upgrade -y


RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing wget curl git python-software-properties python-setuptools vim-tiny nginx drush phpmyadmin memcached php5 php-apc php-pear php5-cli php5-common php5-curl php5-dev php5-fpm php5-gd php5-imagick php5-imap php5-intl php5-json php5-mcrypt php5-memcache php5-ming php5-mysql php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl libssh2-php libevent-dev redis-server openjdk-7-jdk openjdk-7-jre
#mariadb-server mariadb-client



RUN pecl install apc bcompiler geoip gmagick imagick lzf mailparse memcache mongo pdflib rar uploadprogress Xdebug


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=bin




# make file drush if needed
#ADD drupalAdyax.make /var/www/drupal/


RUN echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini
ADD nginx.conf /etc/nginx/nginx.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/expires.conf /etc/nginx/conf/expires.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/directive-only/x-ua-compatible.conf /etc/nginx/conf/x-ua-compatible.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/cross-domain-fonts.conf /etc/nginx/conf/cross-domain-fonts.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/protect-system-files.conf /etc/nginx/conf/protect-system-files.conf
ADD nginx-site.conf /etc/nginx/sites-available/default
RUN sed -i -e '/access_log/d' /etc/nginx/conf/expires.conf
RUN sed -i -e 's/^listen =.*/listen = \/var\/run\/php5-fpm.sock/' /etc/php5/fpm/pool.d/www.conf




RUN service php5-fpm reload && service nginx reload

RUN apt-get -y -q autoclean && apt-get -y -q autoremove


# Define mountable directories.
#VOLUME ["/data"]

# Define working directory.
#WORKDIR /data


# on définit la commande par défaut
ENTRYPOINT ["/bin/bash"]



# Expose ports.

# Nginx
EXPOSE 80
EXPOSE 443

# MariaDB
EXPOSE 3306

# Redis
EXPOSE 6379

# Webdis
EXPOSE 7379

# http://localhost:8983/solr/
EXPOSE 8983

#Mount a Host Directory as a Data Volume
#docker run -d -P --name web -v /src/webapp:/opt/webapp training/webapp python app.py