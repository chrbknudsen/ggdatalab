#' Datalab discrete fill scale
#' @export
scale_fill_datalab_d <- function(..., reverse = FALSE) {
  ggplot2::discrete_scale(
    "fill",
    "datalab_d",
    datalab_pal("discrete", reverse),
    ...
  )
}

#' Datalab discrete colour scale
#' @export
scale_colour_datalab_d <- function(..., reverse = FALSE) {
  ggplot2::discrete_scale(
    "colour",
    "datalab_d",
    datalab_pal("discrete", reverse),
    ...
  )
}

#' @export
scale_color_datalab_d <- scale_colour_datalab_d