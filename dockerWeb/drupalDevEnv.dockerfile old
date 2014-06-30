# docker Drupal-Adyax
#
#
# VERSION       1
# DOCKER-VERSION        1

# Pull base image.
# FROM dockerfile/ubuntu
FROM debian:wheezy



ADD install.sh /home/

RUN cd /home/
RUN chmod +x install.sh
RUN ./install.sh


ADD drupalAdyax.make /var/www/drupal/

RUN echo "cgi.fix_pathinfo = 0;" >> /etc/php5/fpm/php.ini
ADD nginx.conf /etc/nginx/nginx.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/expires.conf /etc/nginx/conf/expires.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/directive-only/x-ua-compatible.conf /etc/nginx/conf/x-ua-compatible.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/cross-domain-fonts.conf /etc/nginx/conf/cross-domain-fonts.conf
ADD https://raw.github.com/h5bp/server-configs-nginx/master/h5bp/location/protect-system-files.conf /etc/nginx/conf/protect-system-files.conf
ADD nginx-site.conf /etc/nginx/sites-available/default
RUN sed -i -e '/access_log/d' /etc/nginx/conf/expires.conf
RUN sed -i -e 's/^listen =.*/listen = \/var\/run\/php5-fpm.sock/' /etc/php5/fpm/pool.d/www.conf






# Define mountable directories.
#VOLUME ["/data"]

# Define working directory.
#WORKDIR /data


# Expose ports.
EXPOSE 80 # Nginx
EXPOSE 443 # Nginx
EXPOSE 3306 # MariaDB
EXPOSE 6379 # Redis
EXPOSE 7379 # Webdis
EXPOSE 8983 # http://localhost:8983/solr/

#Mount a Host Directory as a Data Volume
#docker run -d -P --name web -v /src/webapp:/opt/webapp training/webapp python app.py
