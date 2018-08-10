
library("nbaR")
library("testthat")

context("Testing class SummarySourceSystem")

test_that("Constructor works", {
  obj <- SummarySourceSystem$new()
  expect_is(obj, "SummarySourceSystem")  
})

test_that("toList works", {
  obj <- SummarySourceSystem$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- SummarySourceSystem$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

