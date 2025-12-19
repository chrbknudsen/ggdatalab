# Datalab palette function

Returns a palette function for discrete or continuous use.

## Usage

``` r
datalab_pal(type = c("discrete", "continuous"), reverse = FALSE)
```

## Arguments

- type:

  `"discrete"` or `"continuous"`.

- reverse:

  Logical. Reverse palette order.

## Value

A function. For discrete: `function(n)` returns `n` colours. For
continuous: `function(x)` maps values in `[0, 1]` to colours.
