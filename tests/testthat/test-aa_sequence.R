test_that("aa sequence from codons", {
  expect_equal(aa_sequence(c("UUU", "UCU")),"FS")
})
