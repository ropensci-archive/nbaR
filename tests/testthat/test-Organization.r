library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Organization")

test_that("Constructor works", {
  obj <- Organization$new()
  expect_is(obj, "Organization")

  # test constructor with random arguments
  # test field agentText, type character
  obj <- Organization$new(
    agentText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Organization")
  # test field name, type character
  obj <- Organization$new(
    name = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Organization")
})

test_that("toList works", {
  obj <- Organization$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Organization$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
