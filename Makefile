.PHONY: all reveal

all: reveal
	@:

LIB_DIR := assets/lib
SRC_DIR := assets/src
REVEAL_LIB := ${LIB_DIR}/reveal.js
REVEAL_SRC := ${SRC_DIR}/reveal.js

reveal: ${REVEAL_LIB}/dist/reveal.css \
  ${REVEAL_LIB}/dist/reveal.esm.js \
  ${REVEAL_LIB}/plugin/notes/notes.esm.js \
  ${REVEAL_LIB}/plugin/search/search.esm.js
	grep '^ \* ' $<

${REVEAL_LIB}/%: ${REVEAL_SRC}/%
	mkdir -p $(@D)
	cp $< $@

${REVEAL_SRC}/dist/reveal.esm.js:
	git submodule update --init --recursive
