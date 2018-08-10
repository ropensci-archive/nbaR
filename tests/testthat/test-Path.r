
library("nbaR")
library("testthat")

context("Testing class Path")

test_that("Constructor works", {
  obj <- Path$new()
  expect_is(obj, "Path")
})

test_that("toList works", {
  obj <- Path$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Path$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
