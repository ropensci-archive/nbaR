
library("nbaR")
library("testthat")

context("Testing class Polygon")

test_that("Constructor works", {
  obj <- Polygon$new()
  expect_is(obj, "Polygon")
})

test_that("toList works", {
  obj <- Polygon$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Polygon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
