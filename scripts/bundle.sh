#! /bin/bash

mkdir -p $ARTIFACT_DIR

yarn install --production --ignore-scripts --prefer-offline
mv node_modules dist package.json config.js $ARTIFACT_DIR 