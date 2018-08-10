
library("nbaR")
library("testthat")

context("Testing class GeoJsonObject")

test_that("Constructor works", {
  obj <- GeoJsonObject$new()
  expect_is(obj, "GeoJsonObject")  
})

test_that("toList works", {
  obj <- GeoJsonObject$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- GeoJsonObject$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

