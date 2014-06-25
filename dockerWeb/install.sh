#!/bin/bash

# autre
# git pwgen python-setuptools vim-tiny php5-mysql php-apc php5-gd php5-curl php5-memcache memcached drush mc
# php5 php5-fpm php-apc

mkdir /var/www


# apt-get install -y wget curl git python-software-properties python-setuptools vim-tiny


# Varnish (Maybe for later)
#curl http://repo.varnish-cache.org/debian/GPG-key.txt | apt-key add -
#echo "deb http://repo.varnish-cache.org/debian/ wheezy varnish-3.0" >> /etc/apt/sources.list
#add-apt-repository 'deb http://repo.varnish-cache.org/debian/ wheezy varnish-3.0'


# Ajout source pour MariaDB.
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
echo 'deb http://ftp.igh.cnrs.fr/pub/mariadb/repo/10.0/debian wheezy main' >> /etc/apt/sources.list


#
# Ajout source pour NginX.
add-apt-repository -y ppa:nginx/stable


# source pour la dernière version de PHP5
#add-apt-repository -y ppa:ondrej/php5


declare -a packetToInstall=(
nginx
drush
phpmyadmin
memcached
php5
php-apc
php-pear
php5-cli
php5-common
php5-curl
php5-curl
php5-dev
php5-fpm
php5-gd
php5-imagick
php5-imap
php5-intl
php5-json
php5-mcrypt
php5-mcrypt
php5-memcache
php5-ming
php5-mysql
php5-ps
php5-pspell
php5-recode
php5-snmp
php5-sqlite
php5-tidy
php5-xmlrpc
php5-xsl
libssh2-php
#varnish
mariadb-server
mariadb-client
redis-server
openjdk-7-jdk # Java pour Apache Solr
openjdk-7-jre # Java pour Apache Solr
)


tLen=${#packetToInstall[@]}

for ((i=0;i<${tLen};i++));
do
packetList+=" ${packetToInstall[$i]}"
done

#apt-get -y install ${packetList}

#apt-get -f install 



# PECL Module
declare -a PECLModuleToInstall=(
apc
bcompiler
geoip
gmagick
imagick
lzf
mailparse
memcache
mongo
pdflib
rar
uploadprogress
Xdebug
)


tLen=${#PECLModuleToInstall[@]}


for ((i=0;i<${tLen};i++));
do
PECLModuleToInstallList+=" ${PECLModuleToInstall[$i]}"
done

pecl install ${PECLModuleToInstall}



# Install Webdis.
git clone git://github.com/nicolasff/webdis.git 
cd webdis
make
./webdis & # this line to start webdis


# Apache Solr
# https://coderwall.com/p/0s3flw


# Conf PHP-FPM
# default_charset = "utf-8" >> /etc/php5/fpm/php.ini

#☻sed -i "s/^bind-address/#bind-address/" /etc/mysql/my.cnf


# Composer
curl -sS https://getcomposer.org/installer | php --install-dir=bin
mv /usr/bin/composer.phar /usr/bin/composer


## Retrieve drupal
#rm -rf /var/www/index.*;
#cd /var/www/drupal/;
##drush dl drupal;
#drush make drupalAdyax.make
##mv /var/drupal*/ /var/www/;
#drush site-install standard --account-name=admin --account-pass=admin --db-url=mysql://YourMySQLUser:RandomPassword@localhost/YourMySQLDatabase
#chmod a+w /var/www/drupal/sites/default;
#mkdir /var/www/drupal/sites/default/files;
#chown -R www-data:www-data /var/www/;



# phpinfo.php
cat > /var/www/phpinfo.php <<EOF
<?
php phpinfo();
?>
EOF


#echo "SSL Key"
#openssl req -x509 -nodes -days 99999 -newkey rsa:2048 -out /etc/apache2/server.crt -keyout /etc/apache2/server.key

service php5-fpm reload && service nginx reload

# && /etc/init.d/varnish start


apt-get -y -q autoclean && apt-get -y -q autoremove