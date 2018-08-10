
library("nbaR")
library("testthat")

context("Testing class Reference")

test_that("Constructor works", {
  obj <- Reference$new()
  expect_is(obj, "Reference")  
})

test_that("toList works", {
  obj <- Reference$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- Reference$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

