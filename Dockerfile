FROM php:5.6.6-apache
RUN echo "America/Sao_Paulo" > /etc/timezone \
&& dpkg-reconfigure -f noninteractive tzdata

RUN a2enmod proxy_fcgi rewrite

COPY apache2.conf /etc/apache2/apache2.conf

EXPOSE 80
CMD ["apache2-foreground"]
