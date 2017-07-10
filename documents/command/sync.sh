#!/bin/sh
git --version
git pull origin master
rsync -av --exclude-from=/home/project/kpdh-php-spider/exclude.list /home/project/kpdh-php-spider/spider/ /var/www/virtual/picsite/home/wwwroot/spider
