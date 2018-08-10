
library("nbaR")
library("testthat")

context("Testing class MultiPoint")

test_that("Constructor works", {
  obj <- MultiPoint$new()
  expect_is(obj, "MultiPoint")  
})

test_that("toList works", {
  obj <- MultiPoint$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- MultiPoint$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

