.PHONY: all reveal

all: reveal
	@:

LIB_DIR := assets/lib
SRC_DIR := assets/src
REVEAL_LIB := ${LIB_DIR}/reveal.js
REVEAL_SRC := ${SRC_DIR}/reveal.js

reveal: ${REVEAL_LIB}/dist/reveal.css \
  ${REVEAL_LIB}/dist/reveal.mjs \
  ${REVEAL_LIB}/dist/plugin/notes.mjs \
  ${REVEAL_LIB}/dist/plugin/search.mjs

${REVEAL_LIB}/%: ${REVEAL_SRC}/%
	mkdir -p $(@D)
	cp $< $@

${REVEAL_SRC}/dist/reveal.mjs:
	git submodule update --init --recursive
