#!/usr/bin/env bash

if [ $1 ] && [ $2 ] && [ $3 ];
    then
        export COMPOSER_HOME=/var/www/$1/composer_home
        cd /var/www/$1
        composer create-project --repository-url=$2 $3
    else
        echo "";
        echo "1st parameter is magento domain";
        echo "2st parameter is repository url";
        echo "2st parameter is project name";
        echo "Try this: magento-injection.sh http://repo.mageno.com/ magento/project-community-edition2.2.5";
        echo "";
fi;
