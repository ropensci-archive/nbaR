
library("nbaR")
library("testthat")

context("Testing class SummaryVernacularName")

test_that("Constructor works", {
  obj <- SummaryVernacularName$new()
  expect_is(obj, "SummaryVernacularName")  
})

test_that("toList works", {
  obj <- SummaryVernacularName$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- SummaryVernacularName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

