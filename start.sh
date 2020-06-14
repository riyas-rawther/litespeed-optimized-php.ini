#!/bin/bash

wget https://raw.githubusercontent.com/riyas-rawther/litespeed-optimized-php.ini/master/php.ini
sudo cp /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/php.ini.back
mv php.ini /usr/local/lsws/lsphp73/etc/php/7.3/litespeed/
sudo reboot