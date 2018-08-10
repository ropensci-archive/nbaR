
library("nbaR")
library("testthat")

context("Testing class QuerySpec")

test_that("Constructor works", {
  obj <- QuerySpec$new()
  expect_is(obj, "QuerySpec")
})

test_that("toList works", {
  obj <- QuerySpec$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- QuerySpec$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
