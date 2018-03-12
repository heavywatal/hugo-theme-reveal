DST=static/reveal.js
rsync -auvm --exclude='theme' --exclude='*scss' reveal.js/css $DST/
rsync -auvm reveal.js/js $DST/
rsync -auvm --exclude='css' --exclude='font' reveal.js/lib $DST/
rsync -auvm --include='*/' --include='notes/notes.*' --exclude='*' reveal.js/plugin $DST/
