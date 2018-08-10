
library("nbaR")
library("testthat")

context("Testing class SourceSystem")

test_that("Constructor works", {
  obj <- SourceSystem$new()
  expect_is(obj, "SourceSystem")
})

test_that("toList works", {
  obj <- SourceSystem$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SourceSystem$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
