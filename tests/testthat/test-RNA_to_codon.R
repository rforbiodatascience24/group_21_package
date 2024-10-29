test_that("Split six bases to two codons", {
  expect_equal(RNA_to_codon("AUGTTG"),c("AUG","TTG"))
})



test_that("Split seven bases to two codons", {
  expect_equal(RNA_to_codon("AUGTTGA"),c("AUG","TTG"))
})
