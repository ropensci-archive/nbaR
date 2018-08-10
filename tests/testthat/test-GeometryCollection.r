
library("nbaR")
library("testthat")

context("Testing class GeometryCollection")

test_that("Constructor works", {
  obj <- GeometryCollection$new()
  expect_is(obj, "GeometryCollection")  
})

test_that("toList works", {
  obj <- GeometryCollection$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- GeometryCollection$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

