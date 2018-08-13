library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QueryResultItemObject")

test_that("Constructor works", {
  obj <- QueryResultItemObject$new()
  expect_is(obj, "QueryResultItemObject")

  # test constructor with random arguments
  # test field score, type numeric
  obj <- QueryResultItemObject$new(score = runif(1))
  expect_is(obj, "QueryResultItemObject")
})

test_that("toList works", {
  obj <- QueryResultItemObject$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- QueryResultItemObject$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
