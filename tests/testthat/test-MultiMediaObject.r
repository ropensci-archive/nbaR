
library("nbaR")
library("testthat")

context("Testing class MultiMediaObject")

test_that("Constructor works", {
  obj <- MultiMediaObject$new()
  expect_is(obj, "MultiMediaObject")
})

test_that("toList works", {
  obj <- MultiMediaObject$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiMediaObject$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
