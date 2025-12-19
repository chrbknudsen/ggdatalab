#' Datalab continuous fill scale
#'
#' @param ... Passed to [ggplot2::scale_fill_gradientn()].
#' @param reverse Logical. Reverse palette order.
#' @param na.value Colour for missing values.
#' @export
#' @importFrom ggplot2 scale_fill_gradientn
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
#'
#' @param ... Passed to [ggplot2::scale_colour_gradientn()].
#' @param reverse Logical. Reverse palette order.
#' @param na.value Colour for missing values.
#' @export
#' @importFrom ggplot2 scale_colour_gradientn
scale_colour_datalab_c <- function(..., reverse = FALSE, na.value = "grey80") {
  cols <- datalab_cols()
  if (reverse) cols <- rev(cols)

  ggplot2::scale_colour_gradientn(
    colours = cols,
    na.value = na.value,
    ...
  )
}

#' @rdname scale_colour_datalab_c
#' @export
scale_color_datalab_c <- scale_colour_datalab_c
