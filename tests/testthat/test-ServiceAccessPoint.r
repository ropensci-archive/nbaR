library("nbaR")
library("testthat")

set.seed(111)

context("Testing class ServiceAccessPoint")

test_that("Constructor works", {
  obj <- ServiceAccessPoint$new()
  expect_is(obj, "ServiceAccessPoint")

  # test constructor with random arguments
  # test field accessUri, type character
  obj <- ServiceAccessPoint$new(
    accessUri = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ServiceAccessPoint")
  # test field format, type character
  obj <- ServiceAccessPoint$new(
    format = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ServiceAccessPoint")
  # test field variant, type character
  obj <- ServiceAccessPoint$new(
    variant = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ServiceAccessPoint")
})

test_that("toList works", {
  obj <- ServiceAccessPoint$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- ServiceAccessPoint$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
