#' Datalab palette (hex)
#'
#' @return A character vector of hex colours.
#' @export
datalab_cols <- function() {
  c(
    "#fff568",
    "#fbaf5d",
    "#f26c4f",
    "#f26d7d",
    "#f06eaa",
    "#a864a8",
    "#8560a8",
    "#605ca8",
    "#5674b9",
    "#448ccb",
    "#00bff3",
    "#1cbbb4",
    "#3cb878",
    "#7cc576",
    "#acd373"
  )
}

#' Datalab palette function
#'
#' Returns a palette function for discrete or continuous use.
#'
#' @param type `"discrete"` or `"continuous"`.
#' @param reverse Logical. Reverse palette order.
#' @return A function. For discrete: `function(n)` returns `n` colours.
#' For continuous: `function(x)` maps values in `[0, 1]` to colours.
#' @export
#' @importFrom scales gradient_n_pal
datalab_pal <- function(type = c("discrete", "continuous"), reverse = FALSE) {
  type <- match.arg(type)
  cols <- datalab_cols()
  if (reverse) cols <- rev(cols)

  if (type == "discrete") {
    function(n) {
      if (is.null(n) || n <= 0) return(character())
      idx <- (seq_len(n) - 1L) %% length(cols) + 1L
      if (n > length(cols)) {
        warning(
          "Requested ", n, " colours, but palette has only ", length(cols),
          ". Colours will be recycled.",
          call. = FALSE
        )
      }
      cols[idx]
    }
  } else {
    scales::gradient_n_pal(cols)
  }
}
