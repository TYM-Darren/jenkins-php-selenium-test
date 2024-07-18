#!/usr/bin/env sh

set -x
#docker run -d -p 80:80 --name my-apache-php-app2 -v c:\\Users\\darre\\Documents\\GitHub\\jenkins-php-selenium-test\\src:/var/www/html php:7.2-apache
docker run -d -p 80:80 --name my-apache-php-app -v /home/darren/SSD/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache
docker cp ./src/. my-apache-php-app:/var/www/html
sleep 1
set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

