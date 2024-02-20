#!/bin/bash

export BUILD=$1
echo "/home/runner/.erg/bin" >> $GITHUB_PATH
echo "ERG_PATH=/home/runner/.erg" >> $GITHUB_ENV

curl -L https://github.com/mtshiba/ergup/raw/main/ergup.py | python3 - $BUILD

echo done
