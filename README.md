# hugo-theme-reveal: Hugo theme for reveal.js and remark

## Installation

1.  Initialize [reveal.js](https://github.com/hakimel/reveal.js)
    and [remark](https://github.com/gnab/remark) submodules:
    `git submodule update --init --recursive`

1.  Execute `setup.sh` to copy necessary files to `static/`.


## Options

`config.toml` of [example slides](https://heavywatal.github.io/slides/):
```toml
+++
title = "Slide decks — Heavy Watal"
theme = "reveal"
baseURL = "https://heavywatal.github.io/slides/"
buildDrafts = false
buildFuture = true
disableKinds = ["RSS", "sitemap"]
ignoreFiles = ["\\.R$", "\\.Rmd$", "\\.csv$"]
languageCode = "en-us"
noTimes = true
pygmentsUseClasses = true
pygmentsCodefences = true
googleAnalytics = "UA-***"

[author]
name = "Watal M. Iwasaki"
twitter = "@heavywatal"

[markup.goldmark.renderer]
unsafe = true

[params]
og_image = "https://avatars.githubusercontent.com/heavywatal"
+++
```

Example of front matter:
```toml
+++
title = "Writing an R package interface to C++ libraries with Rcpp"
date = 2018-07-15T15:00:00+09:00
type = "reveal"
draft = false
+++
```
