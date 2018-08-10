
library("nbaR")
library("testthat")

context("Testing class Agent")

test_that("Constructor works", {
  obj <- Agent$new()
  expect_is(obj, "Agent")
})

test_that("toList works", {
  obj <- Agent$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Agent$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
