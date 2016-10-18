#!/bin/sh

for SERVICE in mysql rsyslog
do
    service $SERVICE start
done

/usr/local/bin/redis-server /etc/redis.conf
/usr/local/apache2/bin/apachectl start

tail -f /dev/null
