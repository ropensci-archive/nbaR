library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SourceSystem")

test_that("Constructor works", {
  obj <- SourceSystem$new()
  expect_is(obj, "SourceSystem")

  # test constructor with random arguments
  # test field code, type character
  obj <- SourceSystem$new(
    code = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SourceSystem")
  # test field name, type character
  obj <- SourceSystem$new(
    name = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SourceSystem")
})

test_that("toList works", {
  obj <- SourceSystem$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SourceSystem$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
