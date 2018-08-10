
library("nbaR")
library("testthat")

context("Testing class SummaryScientificName")

test_that("Constructor works", {
  obj <- SummaryScientificName$new()
  expect_is(obj, "SummaryScientificName")
})

test_that("toList works", {
  obj <- SummaryScientificName$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SummaryScientificName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
