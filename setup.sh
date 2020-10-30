#!/bin/sh
SRC=reveal.js
DST=static/lib/reveal.js
mkdir -p $DST
rsync -auvm --exclude='theme/' $SRC/dist/ $DST/
rsync -auvm $SRC/plugin/notes/ $DST/plugin/

cd remark/
npm install
node make
DST=../static/lib/remark
mkdir -p $DST
cp -a out/remark.min.js $DST
