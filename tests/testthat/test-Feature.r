
library("nbaR")
library("testthat")

context("Testing class Feature")

test_that("Constructor works", {
  obj <- Feature$new()
  expect_is(obj, "Feature")
})

test_that("toList works", {
  obj <- Feature$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Feature$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
