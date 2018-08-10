
library("nbaR")
library("testthat")

context("Testing class Point")

test_that("Constructor works", {
  obj <- Point$new()
  expect_is(obj, "Point")
})

test_that("toList works", {
  obj <- Point$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Point$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
