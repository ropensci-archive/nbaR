
library("nbaR")
library("testthat")

context("Testing class ChronoStratigraphy")

test_that("Constructor works", {
  obj <- ChronoStratigraphy$new()
  expect_is(obj, "ChronoStratigraphy")
})

test_that("toList works", {
  obj <- ChronoStratigraphy$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- ChronoStratigraphy$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
