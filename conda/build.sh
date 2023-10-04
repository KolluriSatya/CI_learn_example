#!/bin/bash

mkdir -p ${PREFIX}/bin

chmod +x src/resfinder
cp src/resfinder ${PREFIX}/bin/resfinder

# copy script to download database
chmod +x ${RECIPE_DIR}/download-resfinder-db.sh
cp ${RECIPE_DIR}/download-resfinder-db.sh ${PREFIX}/bin/download-resfinder-db.sh
