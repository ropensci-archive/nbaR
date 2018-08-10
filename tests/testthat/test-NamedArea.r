
library("nbaR")
library("testthat")

context("Testing class NamedArea")

test_that("Constructor works", {
  obj <- NamedArea$new()
  expect_is(obj, "NamedArea")  
})

test_that("toList works", {
  obj <- NamedArea$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- NamedArea$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

