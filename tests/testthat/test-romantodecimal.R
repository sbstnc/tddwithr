context("RomanToDecimal")

test_cases <- data.frame(given    = c("M", "D", "C", "L", "X", "V", "I", "mmvi", "McMxLIv"),
                         expected = c(1000, 500, 100, 50, 10, 5, 1, 2006, 1944), stringsAsFactors = FALSE)

test_that("conversion is as expected", {
  expect_equal(rom2dec(test_cases$given), test_cases$expected)
})