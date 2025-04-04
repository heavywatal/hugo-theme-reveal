.PHONY: all reveal

all: reveal
	@:

SRC_DIR := assets/src
REVEAL_SRC := ${SRC_DIR}/reveal.js

reveal: ${REVEAL_SRC}/dist/reveal.esm.js
	grep '^ \* ' $<

${REVEAL_SRC}/dist/reveal.esm.js:
	git submodule update --init --recursive
