#!/bin/bash

filename=ergup`python3 -c "import sys; print('%d%d' % (sys.version_info.major, sys.version_info.minor))"`.pyc
curl -O -L https://github.com/mtshiba/ergup/raw/main/bin/$filename
grep -q "404" $filename && echo "not supported python version" || python3 $filename

rm $filename

echo "/home/runner/.erg/bin" >> $GITHUB_PATH
echo "ERG_PATH=/home/runner/.erg" >> $GITHUB_ENV
echo done
