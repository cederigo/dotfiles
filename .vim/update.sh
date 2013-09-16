#!/bin/bash

PLUGIN_DIR="`dirname $0`/bundle"

cd $PLUGIN_DIR

for plugin in `ls`; do
  echo "updating $plugin";
  cd $plugin
  git pull
  cd -
done;

cd -

