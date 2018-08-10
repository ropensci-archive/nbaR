
library("nbaR")
library("testthat")

context("Testing class GeoArea")

test_that("Constructor works", {
  obj <- GeoArea$new()
  expect_is(obj, "GeoArea")
})

test_that("toList works", {
  obj <- GeoArea$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GeoArea$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
