library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Filter")

test_that("Constructor works", {
  obj <- Filter$new()
  expect_is(obj, "Filter")

  # test constructor with random arguments
  # test field acceptRegexp, type character
  obj <- Filter$new(
    acceptRegexp = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Filter")
  # test field rejectRegexp, type character
  obj <- Filter$new(
    rejectRegexp = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Filter")
  # test field acceptValues, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Filter$new(acceptValues = randomList)
  expect_is(obj, "Filter")
  # test field rejectValues, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Filter$new(rejectValues = randomList)
  expect_is(obj, "Filter")
})

test_that("toList works", {
  obj <- Filter$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Filter$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
