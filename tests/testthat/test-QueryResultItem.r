library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QueryResultItem")

test_that("Constructor works", {
  obj <- QueryResultItem$new()
  expect_is(obj, "QueryResultItem")

  # test constructor with random arguments
  # test field score, type numeric
  obj <- QueryResultItem$new(score = runif(1))
  expect_is(obj, "QueryResultItem")
})

test_that("toList works", {
  obj <- QueryResultItem$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- QueryResultItem$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
