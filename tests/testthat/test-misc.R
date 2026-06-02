test_that("bshift introduces k leading NAs", {
  x <- 1:10
  result <- bshift(x, k = 2)
  expect_true(all(is.na(result[1:2])))
  expect_false(anyNA(result[3:10]))
})

test_that("bshift shifts values correctly", {
  x <- 1:10
  result <- bshift(x, k = 3)
  expect_equal(as.vector(result[4:10]), 1:7)
})

test_that("bshift returns same length as input", {
  x <- 1:20
  expect_equal(nrow(bshift(x, k = 5)), 20)
})

test_that("bshift k = 1 is the default", {
  x <- 1:5
  expect_equal(bshift(x), bshift(x, k = 1))
})

test_that("pvalue two-sided at t = 0 returns 1", {
  expect_equal(pvalue(0, alternative = "two.sided"), 1)
})

test_that("pvalue two-sided is symmetric", {
  expect_equal(pvalue(1.5, alternative = "two.sided"), pvalue(-1.5, alternative = "two.sided"))
})

test_that("pvalue greater gives half the two-sided p-value for positive t", {
  p_two <- pvalue(2, alternative = "two.sided")
  p_greater <- pvalue(2, alternative = "greater")
  expect_equal(p_two, 2 * p_greater)
})

test_that("pvalue less gives half the two-sided p-value for negative t", {
  p_two <- pvalue(-2, alternative = "two.sided")
  p_less <- pvalue(-2, alternative = "less")
  expect_equal(p_two, 2 * p_less)
})

test_that("pvalue with finite df uses t-distribution", {
  expect_equal(pvalue(2, df = 10, alternative = "two.sided"), 2 * pt(-2, df = 10))
})

test_that("pvalue defaults to two-sided", {
  expect_equal(pvalue(1.96), pvalue(1.96, alternative = "two.sided"))
})

test_that("pvalue output is between 0 and 1", {
  expect_gte(pvalue(3.5), 0)
  expect_lte(pvalue(3.5), 1)
})
