test_that("generate_sequence works", {
  set.seed(123)
  result <- generate_sequence(4)
  expect_equal(result, "GGGT")
})
