#!/usr/bin/env bash
# This script installs/updates global npm packages that are handy to have on the CLI.

npm cache clean

npm install -g npm # Update npm itself.
npm install -g get-wanted-dependencies
npm install -g gifify # Also see: https://gist.github.com/paulirish/b6cf161009af0708315c
npm install -g gulp
npm install -g http-server
npm install -g internal-ip
npm install -g is-online
npm install -g is-up
npm install -g json
npm install -g module
npm install -g nodemon
npm install -g npm-me
npm install -g npm-popular
npm install -g public-ip
