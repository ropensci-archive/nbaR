
library("nbaR")
library("testthat")

context("Testing class QueryResultItem")

test_that("Constructor works", {
  obj <- QueryResultItem$new()
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

