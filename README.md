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

[markup.goldmark.renderer]
unsafe = true

[markup.goldmark.extensions]
strikethrough = false

[markup.highlight]
noClasses = false

[services.googleAnalytics]
ID = "G-***"

[params]
og_image = "https://avatars.githubusercontent.com/heavywatal"

[params.author]
name = "Watal M. Iwasaki"

[params.social]
twitter = "@heavywatal"

[module]
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
css = "style.css"
dpi = 108
+++
```
