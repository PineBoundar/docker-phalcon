#!/bin/sh

service rsyslog start; sleep 1;
/etc/init.d/mysql start; sleep 1;
/usr/local/bin/redis-server /etc/redis.conf; sleep 3;
/usr/local/apache2/bin/apachectl start

tail -f /dev/null
