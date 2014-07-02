#!/bin/bash


service php5-fpm start
service nginx start
service redis-server start
./webdis/webdis