#!/bin/bash

service php5-fpm start &
service nginx start &
service redis-server start &
/var/opt/webdis/webdis /var/opt/webdis/webdis.prod.json &
cd /var/opt/solr/example/ && java -jar start.jar &
service mysql start &
service varnish start &
service memcached start &
/bin/bash