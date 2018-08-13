library("nbaR")
library("testthat")

set.seed(111)

context("Testing class NamedArea")

test_that("Constructor works", {
  obj <- NamedArea$new()
  expect_is(obj, "NamedArea")

  # test constructor with random arguments
  # test field areaClass, type character
  obj <- NamedArea$new(
    areaClass = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "NamedArea")
  # test field areaName, type character
  obj <- NamedArea$new(
    areaName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "NamedArea")
})

test_that("toList works", {
  obj <- NamedArea$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- NamedArea$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
