#' Datalab discrete fill scale
#'
#' @param ... Passed to [ggplot2::discrete_scale()].
#' @param reverse Logical. Reverse palette order.
#' @export
#' @importFrom ggplot2 discrete_scale
scale_fill_datalab_d <- function(..., reverse = FALSE) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "datalab_d",
    palette = datalab_pal("discrete", reverse = reverse),
    ...
  )
}

#' Datalab discrete colour scale
#'
#' @param ... Passed to [ggplot2::discrete_scale()].
#' @param reverse Logical. Reverse palette order.
#' @export
#' @importFrom ggplot2 discrete_scale
scale_colour_datalab_d <- function(..., reverse = FALSE) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "datalab_d",
    palette = datalab_pal("discrete", reverse = reverse),
    ...
  )
}

#' @rdname scale_colour_datalab_d
#' @export
scale_color_datalab_d <- scale_colour_datalab_d
