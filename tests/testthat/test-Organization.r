
library("nbaR")
library("testthat")

context("Testing class Organization")

test_that("Constructor works", {
  obj <- Organization$new()
  expect_is(obj, "Organization")  
})

test_that("toList works", {
  obj <- Organization$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- Organization$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

