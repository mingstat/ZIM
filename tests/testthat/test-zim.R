set.seed(1)
n <- 100
x <- rnorm(n)
lambda_true <- exp(0.5 + 0.3 * x)
omega_true <- 0.2
y_zip <- rzip(n, lambda = lambda_true, omega = omega_true)

test_that("zim.control returns a list with expected elements", {
  ctrl <- zim.control()
  expect_type(ctrl, "list")
  expect_named(ctrl, c("dist", "method", "type", "inv", "robust", "trace",
    "start", "minit", "maxit", "epsilon"))
})

test_that("zim.control dist defaults to 'zip'", {
  expect_equal(zim.control()$dist, "zip")
})

test_that("zim.control accepts 'zinb' dist", {
  expect_equal(zim.control(dist = "zinb")$dist, "zinb")
})

test_that("zim fits a ZIP model and returns class 'zim'", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_s3_class(fit, "zim")
})

test_that("zim ZIP fit contains expected components", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_true(all(c("para", "se", "loglik", "aic", "bic", "tic",
    "fitted.values", "residuals", "lambda", "omega") %in% names(fit)))
})

test_that("zim ZIP fitted values are non-negative", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_true(all(fit$fitted.values >= 0))
})

test_that("zim ZIP omega estimates are in (0, 1)", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_true(all(fit$omega > 0) && all(fit$omega < 1))
})

test_that("zim ZIP loglik is finite", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_true(is.finite(fit$loglik))
})

test_that("zim ZIP AIC > 2 * (-loglik)", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_gt(fit$aic, -2 * fit$loglik)
})

test_that("zim ZIP with split formula produces separate X and Z design matrices", {
  fit <- zim(y_zip ~ x | x, control = zim.control(dist = "zip", maxit = 500))
  expect_equal(ncol(fit$X), 2)
  expect_equal(ncol(fit$Z), 2)
})

test_that("zim ZINB fit returns class 'zim' with finite dispersion k", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zinb", maxit = 500))
  expect_s3_class(fit, "zim")
  expect_true(is.finite(fit$k) && fit$k > 0)
})

test_that("zim se vector has same length as para", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_equal(length(fit$se), length(fit$para))
})

test_that("print.zim runs without error", {
  fit <- zim(y_zip ~ x, control = zim.control(dist = "zip", maxit = 500))
  expect_output(print(fit))
})
