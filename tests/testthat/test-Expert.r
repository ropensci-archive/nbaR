
library("nbaR")
library("testthat")

context("Testing class Expert")

test_that("Constructor works", {
  obj <- Expert$new()
  expect_is(obj, "Expert")
})

test_that("toList works", {
  obj <- Expert$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Expert$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
