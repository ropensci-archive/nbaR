
library("nbaR")
library("testthat")

context("Testing class MultiLineString")

test_that("Constructor works", {
  obj <- MultiLineString$new()
  expect_is(obj, "MultiLineString")  
})

test_that("toList works", {
  obj <- MultiLineString$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- MultiLineString$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

