
library("nbaR")
library("testthat")

context("Testing class Iptc4xmpExt")

test_that("Constructor works", {
  obj <- Iptc4xmpExt$new()
  expect_is(obj, "Iptc4xmpExt")
})

test_that("toList works", {
  obj <- Iptc4xmpExt$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Iptc4xmpExt$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
