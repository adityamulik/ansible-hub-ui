#!/bin/bash

# setNpmOrYarn
USES_NPM=true

# install dependencies
npm ci
npm i -g npm-run-all

# build
if [ $IS_PR = true ]; then
  #npm run verify
  npm-run-all build:prod 'lint:!(po|yaml)'
else
  npm run deploy
fi

# do not use dev dockerfile
rm $APP_ROOT/Dockerfile
