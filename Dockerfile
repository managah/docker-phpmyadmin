FROM phpmyadmin/phpmyadmin

ADD nuphp-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/nuphp-entrypoint.sh

ENTRYPOINT [ "nuphp-entrypoint.sh" ]
CMD [ "apache2-foreground" ]
