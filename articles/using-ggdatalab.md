# 

##  

title: “Using ggdatalab” output: rmarkdown::html_vignette vignette: \> %
% % —

`ggdatalab` provides a ggplot2 theme and colour scales.

## Theme

``` r
library(ggplot2)
library(ggdatalab)

ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  theme_datalab()
```

![](using-ggdatalab_files/figure-html/unnamed-chunk-1-1.png)

## Discrete scales

``` r
ggplot(mtcars, aes(factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  scale_fill_datalab_d() +
  theme_datalab()
```

![](using-ggdatalab_files/figure-html/unnamed-chunk-2-1.png)

## Continuous scales

``` r
ggplot(mtcars, aes(wt, mpg, colour = hp)) +
  geom_point(size = 2) +
  scale_colour_datalab_c() +
  theme_datalab()
```

![](using-ggdatalab_files/figure-html/unnamed-chunk-3-1.png)
