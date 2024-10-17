.PHONY: all reveal

all: reveal
	@:

SRC_DIR := assets/src
LIB_DIR := assets/lib

REVEAL_SRC := ${SRC_DIR}/reveal.js
REVEAL_DST := ${LIB_DIR}/reveal.js

reveal: ${REVEAL_DST}/dist/reveal.esm.js
	grep '^* ' $<

${REVEAL_DST}/dist/reveal.esm.js: ${REVEAL_DST}/dist ${REVEAL_DST}/plugin
	@:

${REVEAL_DST}/dist: ${REVEAL_SRC}/dist
	rsync -auvC --include='*.esm.js' --include='*.css' --exclude='theme/' --exclude='*.*' $</ $@

${REVEAL_DST}/plugin: ${REVEAL_SRC}/plugin
	rsync -auvC --include='*.esm.js' --include='notes/' --include='search/' --exclude='*/' --exclude='*.*' $</ $@

${REVEAL_SRC}/dist:
	git submodule update --init --recursive
