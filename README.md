# ggdatalab

A small ggplot2 extension: **theme_datalab()** + Datalab colour scales for discrete and continuous data.

## Install

```r
install.packages("remotes")
remotes::install_github("kubdatalab/ggdatalab")
```

## Quick start

```r
library(ggplot2)
library(ggdatalab)

ggplot(mtcars, aes(wt, mpg, colour = hp)) +
  geom_point(size = 3) +
  scale_colour_datalab_c() +
  theme_datalab()
```

## Included

- `theme_datalab()`
- Discrete: `scale_fill_datalab_d()`, `scale_colour_datalab_d()`
- Continuous: `scale_fill_datalab_c()`, `scale_colour_datalab_c()`
- Palette helpers: `datalab_cols()`, `datalab_pal()`
