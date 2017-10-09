FROM ubuntu:16.04

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
      git \
      apache2 \
      php7.0 \
      php7.0-cli \
      libapache2-mod-php7.0 \
      php7.0-gd \
      php7.0-json \
      php7.0-mbstring \
      php7.0-mysql \
      php7.0-curl \
      php7.0-xml \
      php-imagick \
      curl

RUN /usr/sbin/a2enmod rewrite

ADD laravel.conf /etc/apache2/sites-available/
ADD ./source /var/www/laravel/
RUN chown -R www-data:www-data /var/www/laravel/
RUN chmod 777 /var/www/laravel/storage/ -R

RUN /usr/sbin/a2dissite '*' && /usr/sbin/a2ensite laravel

RUN /usr/bin/curl -sS https://getcomposer.org/installer |php
RUN /bin/mv composer.phar /usr/local/bin/composer

EXPOSE 80
EXPOSE 443


COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
