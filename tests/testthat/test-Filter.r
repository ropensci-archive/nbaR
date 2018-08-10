
library("nbaR")
library("testthat")

context("Testing class Filter")

test_that("Constructor works", {
  obj <- Filter$new()
  expect_is(obj, "Filter")  
})

test_that("toList works", {
  obj <- Filter$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- Filter$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

