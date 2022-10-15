#!/bin/bash

version='0.5.9'
osArch="x86_64"
fileName="erg-${osArch}-unknown-linux-gnu"
urlFileName="${fileName}.tar.gz"
url="https://github.com/erg-lang/erg/releases/download/v${version}/${urlFileName}"

echo "download ${url}"
curl -L $url > $urlFileName
tar -xz -f $urlFileName --strip-components=1
sudo cp erg /usr/local/bin
rm $urlFileName
echo done
