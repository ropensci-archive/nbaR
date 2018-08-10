
library("nbaR")
library("testthat")

context("Testing class GroupByScientificNameQuerySpec")

test_that("Constructor works", {
  obj <- GroupByScientificNameQuerySpec$new()
  expect_is(obj, "GroupByScientificNameQuerySpec")
})

test_that("toList works", {
  obj <- GroupByScientificNameQuerySpec$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GroupByScientificNameQuerySpec$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
