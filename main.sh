#!/bin/bash

curl -O -L https://github.com/mtshiba/ergup/raw/main/ergup.pyc
python3 ergup.pyc
echo "/home/runner/.erg/bin" >> $GITHUB_PATH
echo "ERG_PATH=/home/runner/.erg" >> $GITHUB_ENV
echo done
