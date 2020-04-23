#!/bin/sh
SRC=reveal.js
DST=static/reveal.js
mkdir -p static
rsync -auvm --include='reveal.css' --include='/css' --exclude='*' $SRC/css $DST/
rsync -auvm --exclude='*.min.js' $SRC/js $DST/
rsync -auvm --include='notes/' --include='/plugin' --exclude='*/' $SRC/plugin $DST/

cd remark/
npm install
node make
cp -a out/remark.* ../static/
