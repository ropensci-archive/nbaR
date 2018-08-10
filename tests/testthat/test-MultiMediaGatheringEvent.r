
library("nbaR")
library("testthat")

context("Testing class MultiMediaGatheringEvent")

test_that("Constructor works", {
  obj <- MultiMediaGatheringEvent$new()
  expect_is(obj, "MultiMediaGatheringEvent")
})

test_that("toList works", {
  obj <- MultiMediaGatheringEvent$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiMediaGatheringEvent$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
