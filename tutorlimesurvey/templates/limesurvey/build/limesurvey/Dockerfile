FROM {{ LIMESURVEY_DOCKER_IMAGE_BASE }}

COPY config.php /var/www/html/application/config/config.php
COPY config.php /var/lime/application/config/config.php

# ENTRYPOINT resets CMD
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
