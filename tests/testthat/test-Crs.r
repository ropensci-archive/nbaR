
library("nbaR")
library("testthat")

context("Testing class Crs")

test_that("Constructor works", {
  obj <- Crs$new()
  expect_is(obj, "Crs")  
})

test_that("toList works", {
  obj <- Crs$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- Crs$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

