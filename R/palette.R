#' Datalab palette (hex)
#' @export
datalab_cols <- function() {
  c(
    "#fff568", "#fbaf5d", "#f26c4f", "#f26d7d", "#f06eaa",
    "#a864a8", "#8560a8", "#605ca8", "#5674b9", "#448ccb",
    "#00bff3", "#1cbbb4", "#3cb878", "#7cc576", "#acd373"
  )
}

#' Datalab palette function
#' @param type discrete or continuous
#' @param reverse logical
#' @export
datalab_pal <- function(type = c("discrete", "continuous"), reverse = FALSE) {
  type <- match.arg(type)
  cols <- datalab_cols()
  if (reverse) cols <- rev(cols)

  if (type == "discrete") {
    function(n) {
      cols[seq_len(n) %% length(cols)]
    }
  } else {
    scales::gradient_n_pal(cols)
  }
}