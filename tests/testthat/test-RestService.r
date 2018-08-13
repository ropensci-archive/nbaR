library("nbaR")
library("testthat")

set.seed(111)

context("Testing class RestService")

test_that("Constructor works", {
  obj <- RestService$new()
  expect_is(obj, "RestService")

  # test constructor with random arguments
  # test field endPoint, type character
  obj <- RestService$new(
    endPoint = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "RestService")
  # test field method, type character
  obj <- RestService$new(
    method = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "RestService")
  # test field consumes, type character
  obj <- RestService$new(
    consumes = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "RestService")
  # test field produces, type character
  obj <- RestService$new(
    produces = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "RestService")
  # test field url, type character
  obj <- RestService$new(
    url = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "RestService")
})

test_that("toList works", {
  obj <- RestService$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- RestService$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
