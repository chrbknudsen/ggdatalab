#' Datalab continuous fill scale
#' @export
scale_fill_datalab_c <- function(..., reverse = FALSE, na.value = "grey80") {
  cols <- datalab_cols()
  if (reverse) cols <- rev(cols)

  ggplot2::scale_fill_gradientn(
    colours = cols,
    na.value = na.value,
    ...
  )
}

#' Datalab continuous colour scale
#' @export
scale_colour_datalab_c <- function(..., reverse = FALSE, na.value = "grey80") {
  cols <- datalab_cols()
  if (reverse) cols <- rev(cols)

  ggplot2::scale_colour_gradientn(
    colours = cols,
    na.value = na.value,
    ...
  )
}

#' @export
scale_color_datalab_c <- scale_colour_datalab_c