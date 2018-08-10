
library("nbaR")
library("testthat")

context("Testing class LithoStratigraphy")

test_that("Constructor works", {
  obj <- LithoStratigraphy$new()
  expect_is(obj, "LithoStratigraphy")  
})

test_that("toList works", {
  obj <- LithoStratigraphy$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- LithoStratigraphy$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

