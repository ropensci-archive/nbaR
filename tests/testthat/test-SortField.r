library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SortField")

test_that("Constructor works", {
  obj <- SortField$new()
  expect_is(obj, "SortField")

  # test constructor with random arguments
  # test field sortOrder, type character
  obj <- SortField$new(
    sortOrder = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SortField")
})

test_that("toList works", {
  obj <- SortField$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SortField$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
