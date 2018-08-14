FROM php:7.2-apache-stretch

# Add apache config
COPY apache-vhost.conf /etc/apache2/sites-enabled/000-default.conf
RUN ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/

# Add code
COPY src/ /var/www/html/
RUN mkdir -p /var/www/html/log && chmod 777 /var/www/html/log
