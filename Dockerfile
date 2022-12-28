FROM phpmyadmin/phpmyadmin

ADD anticache /
ADD nuphp-entrypoint.sh /usr/local/bin/
ADD config.inc.php /var/www/html/
RUN chmod +x /usr/local/bin/nuphp-entrypoint.sh

ENTRYPOINT [ "nuphp-entrypoint.sh" ]
CMD [ "apache2-foreground" ]
