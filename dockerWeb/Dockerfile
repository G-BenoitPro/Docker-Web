# docker Drupal-Adyax
#
#
# VERSION       1
# DOCKER-VERSION        1

# Pull base image.
FROM ubuntu:14.04
MAINTAINER Adyax version: 0.2
ENV DEBIAN_FRONTEND noninteractive



#RUN echo "deb ftp://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ trusty main" >> /etc/apt/sources.list
#RUN echo "deb-src ftp://ubuntu.mirrors.ovh.net/ftp.ubuntu.com/ubuntu/ trusty main" >> /etc/apt/sources.list
#RUN echo "deb http://ubuntu-archive.mirrors.free.org/ubuntu/ trusty main" >> /etc/apt/sources.list
#RUN echo "deb-src http://ubuntu-archive.mirrors.free.org/ubuntu/ trusty main" >> /etc/apt/sources.list

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


RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

# MariaDB
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
RUN echo "deb http://ftp.igh.cnrs.fr/pub/mariadb/repo/10.0/ubuntu trusty main" >> /etc/apt/sources.list
#RUN echo "deb http://ftp.igh.cnrs.fr/pub/mariadb/repo/5.5/ubuntu trusty main" >> /etc/apt/sources.list


ADD mariadb /etc/apt/preferences.d/mariadb


RUN apt-get update

#RUN apt-get upgrade -y


RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing wget curl git python-software-properties python-setuptools vim-tiny nginx drush phpmyadmin memcached php5 php-apc php-pear php5-cli php5-common php5-curl php5-dev php5-fpm php5-gd php5-imagick php5-imap php5-intl php5-json php5-mcrypt php5-memcache php5-ming php5-mysql php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl libssh2-php libevent-dev mysql-common libmysqlclient18 redis-server openjdk-7-jdk openjdk-7-jre mariadb-server mariadb-client

#RUN apt-get update

#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server mariadb-client


RUN pecl install apc bcompiler geoip gmagick imagick lzf mailparse memcache mongo pdflib rar uploadprogress Xdebug


RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/
RUN mv /usr/bin/composer.phar /usr/bin/composer


# Install Webdis.
RUN git clone git://github.com/nicolasff/webdis.git && cd webdis && make


# phpinfo.php
ADD phpinfo.php /var/www/phpinfo.php


#RUN echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini
#ADD nginx.conf /etc/nginx/nginx.conf
#ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/expires.conf /etc/nginx/conf/expires.conf
#ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/directive-only/x-ua-compatible.conf /etc/nginx/conf/x-ua-compatible.conf
#ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/cross-domain-fonts.conf /etc/nginx/conf/cross-domain-fonts.conf
#ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/protect-system-files.conf /etc/nginx/conf/protect-system-files.conf
ADD nginx-site.conf /etc/nginx/sites-available/default
#RUN sed -i -e '/access_log/d' /etc/nginx/conf/expires.conf
#RUN sed -i -e 's/^listen =.*/listen = \/var\/run\/php5-fpm.sock/' /etc/php5/fpm/pool.d/www.conf

RUN mkdir -p /var/www && chown -R www-data:www-data /var/www



# Tomcat
#RUN useradd -Mb /usr/local tomcat
#RUN tar -C /usr/local -zxf /usr/local/src/apache-tomcat-7.*.tar.gz
#RUN mv /usr/local/apache-tomcat-7.* /usr/local/tomcat
#RUN chown -R tomcat:tomcat /usr/local/tomcat
#RUN sudo -u tomcat /usr/local/tomcat/bin/startup.sh


# Solr
ENV SOLR_VERSION 4.9.0
ENV SOLR solr-$SOLR_VERSION
RUN mkdir -p /opt
#ADD http://www.mirrorservice.org/sites/ftp.apache.org/lucene/solr/$SOLR_VERSION/$SOLR.tgz /opt/$SOLR.tgz
ADD solr-4.9.0.tgz /opt/solr-4.9.0.tgz # marche pas, je ne sais pas pk ?
RUN tar -C /opt --extract --file /opt/$SOLR.tgz
RUN ln -s /opt/$SOLR /opt/solr

#CMD ["/bin/bash", "-c", "cd /opt/solr/example; java -jar start.jar"]


RUN service php5-fpm reload
RUN service nginx reload
RUN service redis-server start

RUN apt-get -y -q autoclean && apt-get -y -q autoremove


# Define mountable directories.
#VOLUME ["/data"]

# Define working directory.
#WORKDIR /data


# on définit la commande par défaut
#ENTRYPOINT ["/bin/bash"]



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


ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD ./start.sh