#!/usr/bin/env bash

if [ $1 ] && [ $2 ] && [ $3 ] && [ $4 ] && [ $5 ];
    then
        sudo adduser $3 --gecos "Magento System,0,0,0" --disabled-password
        echo "$3:$4" | sudo chpasswd
        usermod -g www-data $3

        mkdir /var/www/$2

        echo "Download Magento $1 release"

        cd /var/www/
        rm -rf /var/www/$2/*
        rm -rf /var/www/$2/.*

        cd /var/www/$2/
        chown -R :www-data .
        find . -type d -exec chmod 770 {} \;
        find . -type f -exec chmod 660 {} \;
        chmod u+x bin/magento

        SITE=/etc/nginx/sites-available/$2

        sed "s/&DOMAIN&/$2/g" "../config/nginx-site" > $SITE
        ln -s $SITE /etc/nginx/sites-enabled/

        service nginx reload
    else
        echo ""
        echo "Missing parameters.";
        echo "1st parameter is magento release";
        echo "2nd parameter is magento folder name what is same as the domain address";
        echo "3rd parameter is magento linux user (it will create it)";
        echo "4th parameter is magento linux password (it will create it)";
        echo "5th parameter is magento developer mode";
        echo "Try this: magento-prepare.sh 2.2.5 mywebshop.com magento magento developer";
        echo "";
fi;
