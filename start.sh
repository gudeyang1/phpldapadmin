#!/bin/bash

sed -i "s#\${PHPLDAPADMIN_LDAP_HOSTS}#${PHPLDAPADMIN_LDAP_HOSTS}#g" /etc/phpldapadmin/config.php 
exec httpd -D FOREGROUND $@
