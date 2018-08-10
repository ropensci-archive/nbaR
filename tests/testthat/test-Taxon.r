
library("nbaR")
library("testthat")

context("Testing class Taxon")

test_that("Constructor works", {
  obj <- Taxon$new()
  expect_is(obj, "Taxon")
})

test_that("toList works", {
  obj <- Taxon$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Taxon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
