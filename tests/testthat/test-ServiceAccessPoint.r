
library("nbaR")
library("testthat")

context("Testing class ServiceAccessPoint")

test_that("Constructor works", {
  obj <- ServiceAccessPoint$new()
  expect_is(obj, "ServiceAccessPoint")
})

test_that("toList works", {
  obj <- ServiceAccessPoint$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- ServiceAccessPoint$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
