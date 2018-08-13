library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QueryCondition")

test_that("Constructor works", {
  obj <- QueryCondition$new()
  expect_is(obj, "QueryCondition")

  # test constructor with random arguments
  # test field not, type character
  obj <- QueryCondition$new(
    not = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "QueryCondition")
  # test field operator, type character
  obj <- QueryCondition$new(
    operator = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "QueryCondition")
  # test field and, type list, datatype QueryCondition
  lst <- lapply(1:sample(1:10, 1), function(x) QueryCondition$new())
  obj <- QueryCondition$new(and = lst)
  expect_is(obj, "QueryCondition")
  # test field or, type list, datatype QueryCondition
  lst <- lapply(1:sample(1:10, 1), function(x) QueryCondition$new())
  obj <- QueryCondition$new(or = lst)
  expect_is(obj, "QueryCondition")
  # test field boost, type numeric
  obj <- QueryCondition$new(boost = runif(1))
  expect_is(obj, "QueryCondition")
})

test_that("toList works", {
  obj <- QueryCondition$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- QueryCondition$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
