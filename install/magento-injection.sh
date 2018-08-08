#!/usr/bin/env bash

if [ $1 ] && [ $2 ];
    then
        export COMPOSER_HOME=/var/www/$1/composer_home
        cd /var/www/$1
        composer create-project --repository-url=https://repo.magento.com/ magento/project-community-edition . $2
    else
        echo "";
        echo "1st parameter is magento domain";
        echo "2st parameter is magento release";
        echo "Try this: magento-injection.sh mywebshop.com";
        echo "";
fi;
