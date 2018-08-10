
library("nbaR")
library("testthat")

context("Testing class TaxonDescription")

test_that("Constructor works", {
  obj <- TaxonDescription$new()
  expect_is(obj, "TaxonDescription")  
})

test_that("toList works", {
  obj <- TaxonDescription$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- TaxonDescription$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

