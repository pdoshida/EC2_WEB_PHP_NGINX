#!/bin/bash

amazon-linux-extras info nginx1.12
amazon-linux-extras install nginx1.12 -y
systemctl start nginx.service
systemctl enable nginx.service

amazon-linux-extras install php7.2 -y
systemctl start php-fpm.service
systemctl enable php-fpm.service

mv phpinfo.php /usr/share/nginx/html

cp -p /etc/php-fpm.d/www.conf /etc/php-fpm.d/www.conf.org
sed -i -e 's/user = apache/user = nginx/g' /etc/php-fpm.d/www.conf
sed -i -e 's/group = apache/user = nginx/g' /etc/php-fpm.d/www.conf


