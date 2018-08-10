
library("nbaR")
library("testthat")

context("Testing class LineString")

test_that("Constructor works", {
  obj <- LineString$new()
  expect_is(obj, "LineString")  
})

test_that("toList works", {
  obj <- LineString$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- LineString$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

