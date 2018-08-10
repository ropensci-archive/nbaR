
library("nbaR")
library("testthat")

context("Testing class Monomial")

test_that("Constructor works", {
  obj <- Monomial$new()
  expect_is(obj, "Monomial")  
})

test_that("toList works", {
  obj <- Monomial$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- Monomial$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

