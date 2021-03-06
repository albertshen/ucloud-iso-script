#!/bin/bash
set -x
set -e

cd /data/repository/sha-coach-gewara

git checkout master

git pull

rsync -arvP --delete \
        --exclude=.git \
        --exclude=.gitignore \
        --exclude=readme.txt \
        --exclude=Vagrantfile \
        --exclude=config/config.php \
        --exclude=gulpfile.js \
        --exclude=config.rb \
        --exclude=*.sql \
        . /data/sites/default/

echo "1qazxsw2" | sudo -S service php5-fpm restart