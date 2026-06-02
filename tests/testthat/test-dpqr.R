test_that("dzip returns correct density at zero", {
  expect_equal(dzip(0, lambda = 2, omega = 0.3), 0.3 + 0.7 * dpois(0, 2))
})

test_that("dzip returns correct density for positive values", {
  expect_equal(dzip(3, lambda = 2, omega = 0.3), 0.7 * dpois(3, 2))
})

test_that("dzip densities sum to 1", {
  expect_equal(sum(dzip(0:50, lambda = 3, omega = 0.4)), 1, tolerance = 1e-6)
})

test_that("dzip log argument works", {
  d <- dzip(0:5, lambda = 2, omega = 0.3)
  expect_equal(dzip(0:5, lambda = 2, omega = 0.3, log = TRUE), log(d))
})

test_that("pzip returns valid CDF values", {
  p <- pzip(0:10, lambda = 2, omega = 0.3)
  expect_true(all(p >= 0) && all(p <= 1))
  expect_true(all(diff(p) >= 0))
  expect_equal(pzip(Inf, lambda = 2, omega = 0.3), 1)
})

test_that("pzip lower.tail = FALSE returns survival function", {
  expect_equal(
    pzip(3, lambda = 2, omega = 0.3, lower.tail = FALSE),
    1 - pzip(3, lambda = 2, omega = 0.3)
  )
})

test_that("pzip log.p argument works", {
  p <- pzip(3, lambda = 2, omega = 0.3)
  expect_equal(pzip(3, lambda = 2, omega = 0.3, log.p = TRUE), log(p))
})

test_that("qzip inverts pzip", {
  qs <- c(0, 1, 3, 5)
  ps <- pzip(qs, lambda = 2, omega = 0.3)
  expect_equal(qzip(ps, lambda = 2, omega = 0.3), qs)
})

test_that("rzip generates n values", {
  set.seed(4712)
  x <- rzip(100, lambda = 2, omega = 0.3)
  expect_length(x, 100)
  expect_true(all(x >= 0))
  expect_true(all(x == floor(x)))
})

test_that("rzip with omega = 0 matches rpois", {
  set.seed(4712)
  x <- rzip(500, lambda = 3, omega = 0)
  set.seed(4712)
  expected <- rpois(500, 3)
  expect_equal(x, expected)
})

test_that("rzip with omega = 1 produces all zeros", {
  x <- rzip(50, lambda = 3, omega = 1)
  expect_equal(x, rep(0, 50))
})

# --- ZINB ---

test_that("dzinb returns correct density at zero", {
  expect_equal(
    dzinb(0, k = 2, lambda = 3, omega = 0.3),
    0.3 + 0.7 * dnbinom(0, size = 2, mu = 3)
  )
})

test_that("dzinb returns correct density for positive values", {
  expect_equal(
    dzinb(4, k = 2, lambda = 3, omega = 0.3),
    0.7 * dnbinom(4, size = 2, mu = 3)
  )
})

test_that("dzinb densities sum to 1", {
  expect_equal(sum(dzinb(0:200, k = 1, lambda = 3, omega = 0.4)), 1, tolerance = 1e-5)
})

test_that("dzinb log argument works", {
  d <- dzinb(0:5, k = 2, lambda = 3, omega = 0.3)
  expect_equal(dzinb(0:5, k = 2, lambda = 3, omega = 0.3, log = TRUE), log(d))
})

test_that("pzinb returns valid CDF values", {
  p <- pzinb(0:15, k = 2, lambda = 3, omega = 0.3)
  expect_true(all(p >= 0) && all(p <= 1))
  expect_true(all(diff(p) >= 0))
})

test_that("pzinb lower.tail = FALSE returns survival function", {
  expect_equal(
    pzinb(3, k = 2, lambda = 3, omega = 0.3, lower.tail = FALSE),
    1 - pzinb(3, k = 2, lambda = 3, omega = 0.3)
  )
})

test_that("qzinb inverts pzinb", {
  qs <- c(0, 1, 3, 5)
  ps <- pzinb(qs, k = 2, lambda = 3, omega = 0.3)
  expect_equal(qzinb(ps, k = 2, lambda = 3, omega = 0.3), qs)
})

test_that("rzinb generates n values", {
  set.seed(6203)
  x <- rzinb(100, k = 2, lambda = 3, omega = 0.3)
  expect_length(x, 100)
  expect_true(all(x >= 0))
  expect_true(all(x == floor(x)))
})

test_that("rzinb with omega = 1 produces all zeros", {
  x <- rzinb(50, k = 2, lambda = 3, omega = 1)
  expect_equal(x, rep(0, 50))
})

test_that("ZIP reduces to Poisson when omega = 0", {
  expect_equal(dzip(0:10, lambda = 3, omega = 0), dpois(0:10, lambda = 3))
  expect_equal(pzip(0:10, lambda = 3, omega = 0), ppois(0:10, lambda = 3))
})

test_that("ZINB reduces to NB when omega = 0", {
  expect_equal(
    dzinb(0:10, k = 2, lambda = 3, omega = 0),
    dnbinom(0:10, size = 2, mu = 3)
  )
})
