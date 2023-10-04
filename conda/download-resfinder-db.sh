#!/usr/bin/env bash

echo "Downloading lastest version of the ResFinder database to current directory..."

mkdir resfinder_db
cd resfinder_db

wget https://bitbucket.org/genomicepidemiology/resfinder_db/get/master.tar.gz
tar -xvf master.tar.gz --strip-components 1

echo "Installing the ResFinder database with KMA"
python INSTALL.py

echo "The ResFinder database has been downloaded and installed."

exit 0
