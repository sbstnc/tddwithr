context("RomanToDecimal")

testthat::test_that("M equals 1000", {
  expect_equal(rom2dec("M"), 1000)
})

testthat::test_that("D equals 500", {
  expect_equal(rom2dec("D"), 500)
})

testthat::test_that("C equals 100", {
  expect_equal(rom2dec("C"), 100)
})