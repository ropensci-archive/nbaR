
library("nbaR")
library("testthat")

context("Testing class GatheringSiteCoordinates")

test_that("Constructor works", {
  obj <- GatheringSiteCoordinates$new()
  expect_is(obj, "GatheringSiteCoordinates")
})

test_that("toList works", {
  obj <- GatheringSiteCoordinates$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GatheringSiteCoordinates$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
