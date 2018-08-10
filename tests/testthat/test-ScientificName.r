
library("nbaR")
library("testthat")

context("Testing class ScientificName")

test_that("Constructor works", {
  obj <- ScientificName$new()
  expect_is(obj, "ScientificName")
})

test_that("toList works", {
  obj <- ScientificName$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- ScientificName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
