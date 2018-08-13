library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QueryResult")

test_that("Constructor works", {
  obj <- QueryResult$new()
  expect_is(obj, "QueryResult")

  # test constructor with random arguments
  # test field totalSize, type integer
  obj <- QueryResult$new(totalSize = runif(1))
  expect_is(obj, "QueryResult")
  # test field resultSet, type list, datatype QueryResultItemObject
  lst <- lapply(1:sample(1:10, 1), function(x) QueryResultItemObject$new())
  obj <- QueryResult$new(resultSet = lst)
  expect_is(obj, "QueryResult")
})

test_that("toList works", {
  obj <- QueryResult$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- QueryResult$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
