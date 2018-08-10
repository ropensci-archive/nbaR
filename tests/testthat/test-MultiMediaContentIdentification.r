
library("nbaR")
library("testthat")

context("Testing class MultiMediaContentIdentification")

test_that("Constructor works", {
  obj <- MultiMediaContentIdentification$new()
  expect_is(obj, "MultiMediaContentIdentification")  
})

test_that("toList works", {
  obj <- MultiMediaContentIdentification$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- MultiMediaContentIdentification$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

