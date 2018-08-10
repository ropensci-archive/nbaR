
library("nbaR")
library("testthat")

context("Testing class BioStratigraphy")

test_that("Constructor works", {
  obj <- BioStratigraphy$new()
  expect_is(obj, "BioStratigraphy")
})

test_that("toList works", {
  obj <- BioStratigraphy$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- BioStratigraphy$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
