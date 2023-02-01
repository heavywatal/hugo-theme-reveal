# hugo-theme-reveal: Hugo theme for reveal.js

## Options

`config.toml` of [example slides](https://heavywatal.github.io/slides/):
```toml
baseURL = "https://heavywatal.github.io/slides/"
buildDrafts = false
buildFuture = true
title = "Slide decks — Heavy Watal"
disableKinds = ["RSS", "sitemap"]
ignoreFiles = ["\\.R$", "\\.Rmd$", "\\.csv$"]
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

[[module.imports]]
path = "github.com/heavywatal/hugo-theme-reveal"
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


## Development

1.  Initialize [reveal.js](https://github.com/hakimel/reveal.js) submodule:
    `git submodule update --init --recursive`

1.  Execute `setup.sh` to copy necessary files to `static/`.
