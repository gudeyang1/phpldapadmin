FROM centos:7

RUN yum install -y epel-release && \
	yum install -y phpldapadmin php php-bcmath php-gd php-mbstring php-xml php-ldap && \
	yum clean all

ADD phpldapadmin.conf /etc/httpd/conf.d/ 
ADD --chown=apache:apache config.php /etc/phpldapadmin/
ADD start.sh /start.sh


EXPOSE 80

CMD /start.sh
