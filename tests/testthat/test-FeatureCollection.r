
library("nbaR")
library("testthat")

context("Testing class FeatureCollection")

test_that("Constructor works", {
  obj <- FeatureCollection$new()
  expect_is(obj, "FeatureCollection")
})

test_that("toList works", {
  obj <- FeatureCollection$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- FeatureCollection$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
