
library("nbaR")
library("testthat")

context("Testing class SortField")

test_that("Constructor works", {
  obj <- SortField$new()
  expect_is(obj, "SortField")  
})

test_that("toList works", {
  obj <- SortField$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- SortField$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

