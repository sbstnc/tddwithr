context("square")

test_that("-2^2 is 4", {
  expect_equal(square(-2), 4)
})

test_that("3^2 is 9", {
  expect_equal(square(3), 9)
})
