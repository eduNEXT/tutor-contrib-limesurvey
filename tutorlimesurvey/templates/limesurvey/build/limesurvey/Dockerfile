FROM docker.io/acspri/limesurvey:6.1.0

COPY ./config.php /var/lime/application/config/config.php

# ENTRYPOINT resets CMD
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
