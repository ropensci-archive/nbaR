
library("nbaR")
library("testthat")

context("Testing class RestService")

test_that("Constructor works", {
  obj <- RestService$new()
  expect_is(obj, "RestService")
})

test_that("toList works", {
  obj <- RestService$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- RestService$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
