
library("nbaR")
library("testthat")

context("Testing class LngLatAlt")

test_that("Constructor works", {
  obj <- LngLatAlt$new()
  expect_is(obj, "LngLatAlt")
})

test_that("toList works", {
  obj <- LngLatAlt$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- LngLatAlt$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
