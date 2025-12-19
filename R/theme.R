#' Datalab ggplot2 theme
#' @export
theme_datalab <- function(base_size = 12, base_family = "") {
  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(
      plot.background  = ggplot2::element_rect(fill = "white", colour = NA),
      panel.background = ggplot2::element_rect(fill = "white", colour = NA),
      panel.grid.major = ggplot2::element_line(colour = "#e6e6e6", linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      axis.title       = ggplot2::element_text(face = "bold"),
      axis.text        = ggplot2::element_text(size = base_size * 0.9),
      plot.title       = ggplot2::element_text(size = base_size * 1.4, face = "bold", hjust = 0),
      plot.subtitle    = ggplot2::element_text(size = base_size * 1.1, margin = ggplot2::margin(b = 8)),
      plot.caption     = ggplot2::element_text(size = base_size * 0.8, colour = "grey40", hjust = 1),
      legend.title     = ggplot2::element_text(face = "bold"),
      legend.key       = ggplot2::element_blank(),
      legend.background= ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(fill = "#f2f2f2", colour = NA),
      strip.text       = ggplot2::element_text(face = "bold")
    )
}