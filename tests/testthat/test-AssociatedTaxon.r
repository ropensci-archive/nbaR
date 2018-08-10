
library("nbaR")
library("testthat")

context("Testing class AssociatedTaxon")

test_that("Constructor works", {
  obj <- AssociatedTaxon$new()
  expect_is(obj, "AssociatedTaxon")  
})

test_that("toList works", {
  obj <- AssociatedTaxon$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- AssociatedTaxon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

