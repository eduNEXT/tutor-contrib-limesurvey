mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e 'CREATE DATABASE IF NOT EXISTS {{ LIMESURVEY_DB_NAME }};'
mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e "CREATE USER IF NOT EXISTS '{{ LIMESURVEY_DB_USER }}';"
mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e "ALTER USER '{{ LIMESURVEY_DB_USER }}'@'%' IDENTIFIED BY '{{ LIMESURVEY_DB_PASSWORD }}';"
mysql -u {{ MYSQL_ROOT_USERNAME }} --password="{{ MYSQL_ROOT_PASSWORD }}" --host "{{ MYSQL_HOST }}" --port {{ MYSQL_PORT }} -e "GRANT ALL ON {{ LIMESURVEY_DB_NAME }}.* TO '{{ LIMESURVEY_DB_USER }}'@'%';"
