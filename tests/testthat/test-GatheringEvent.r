
library("nbaR")
library("testthat")

context("Testing class GatheringEvent")

test_that("Constructor works", {
  obj <- GatheringEvent$new()
  expect_is(obj, "GatheringEvent")  
})

test_that("toList works", {
  obj <- GatheringEvent$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- GatheringEvent$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

