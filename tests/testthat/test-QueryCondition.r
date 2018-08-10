
library("nbaR")
library("testthat")

context("Testing class QueryCondition")

test_that("Constructor works", {
  obj <- QueryCondition$new()
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

