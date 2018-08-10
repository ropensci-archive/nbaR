
library("nbaR")
library("testthat")

context("Testing class MultiPolygon")

test_that("Constructor works", {
  obj <- MultiPolygon$new()
  expect_is(obj, "MultiPolygon")  
})

test_that("toList works", {
  obj <- MultiPolygon$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- MultiPolygon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

