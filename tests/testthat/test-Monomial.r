library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Monomial")

test_that("Constructor works", {
  obj <- Monomial$new()
  expect_is(obj, "Monomial")

  # test constructor with random arguments
  # test field rank, type character
  obj <- Monomial$new(
    rank = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Monomial")
  # test field name, type character
  obj <- Monomial$new(
    name = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Monomial")
})

test_that("toList works", {
  obj <- Monomial$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Monomial$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
