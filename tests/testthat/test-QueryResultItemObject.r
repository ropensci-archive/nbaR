
library("nbaR")
library("testthat")

context("Testing class QueryResultItemObject")

test_that("Constructor works", {
  obj <- QueryResultItemObject$new()
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

