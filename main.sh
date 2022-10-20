#!/bin/bash

curl -O -L https://github.com/mtshiba/ergup/raw/main/ergup.pyc
python3 ergup.pyc
echo ".erg/bin" >> $GITHUB_PATH
echo "ERG_PATH=.erg" >> $GITHUB_ENV
echo done
