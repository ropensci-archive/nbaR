
library("nbaR")
library("testthat")

context("Testing class QueryResult")

test_that("Constructor works", {
  obj <- QueryResult$new()
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
