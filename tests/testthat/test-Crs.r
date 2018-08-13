library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Crs")

test_that("Constructor works", {
  obj <- Crs$new()
  expect_is(obj, "Crs")

  # test constructor with random arguments
  # test field type, type character
  obj <- Crs$new(
    type = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Crs")
})

test_that("toList works", {
  obj <- Crs$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Crs$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
