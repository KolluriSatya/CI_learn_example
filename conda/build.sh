#!/bin/bash

mkdir -p ${PREFIX}/bin

chmod +x src/resfinder/resfinder.py
cp src/resfinder/resfinder.py ${PREFIX}/bin/resfinder/resfinder.py

# copy script to download database
chmod +x ${RECIPE_DIR}/download-resfinder-db.sh
cp ${RECIPE_DIR}/download-resfinder-db.sh ${PREFIX}/bin/download-resfinder-db.sh
