test_that("theme_datalab returns a theme", {
  th <- theme_datalab()
  expect_true(inherits(th, "theme"))
})

test_that("palettes return expected lengths", {
  p <- datalab_pal("discrete")
  expect_length(p(1), 1)
  expect_length(p(16), 16)
})

test_that("continuous palette maps values", {
  p <- datalab_pal("continuous")
  cols <- p(c(0, 0.5, 1))
  expect_length(cols, 3)
})
