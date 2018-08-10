
library("nbaR")
library("testthat")

context("Testing class Person")

test_that("Constructor works", {
  obj <- Person$new()
  expect_is(obj, "Person")  
})

test_that("toList works", {
  obj <- Person$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- Person$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

