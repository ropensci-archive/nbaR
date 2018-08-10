
library("nbaR")
library("testthat")

context("Testing class DefaultClassification")

test_that("Constructor works", {
  obj <- DefaultClassification$new()
  expect_is(obj, "DefaultClassification")  
})

test_that("toList works", {
  obj <- DefaultClassification$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- DefaultClassification$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

