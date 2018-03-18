# hugo-theme-reveal: simple theme for Hugo with reveal.js

## Options

Example of `config.toml`

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

[params]
og_image = "https://avatars.githubusercontent.com/heavywatal"
+++
```

Example of front matter

```toml
+++
title = "Introduction to data preprocessing"
date = 2018-03-14T16:00:00+09:00
type = "reveal"
draft = false
+++
```

