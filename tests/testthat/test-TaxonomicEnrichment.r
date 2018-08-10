
library("nbaR")
library("testthat")

context("Testing class TaxonomicEnrichment")

test_that("Constructor works", {
  obj <- TaxonomicEnrichment$new()
  expect_is(obj, "TaxonomicEnrichment")
})

test_that("toList works", {
  obj <- TaxonomicEnrichment$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- TaxonomicEnrichment$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
