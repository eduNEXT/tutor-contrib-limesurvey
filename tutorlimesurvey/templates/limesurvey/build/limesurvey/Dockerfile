FROM {{ LIMESURVEY_DOCKER_BASE_IMAGE }}

COPY ./config.php /var/lime/application/config/config.php

# ENTRYPOINT resets CMD
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
