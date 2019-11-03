test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("tolerance saves us", {
  expect_equal(sqrt(2), 1.41, tolerance = .005, scale = 1)
})
