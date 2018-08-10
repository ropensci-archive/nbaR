
library("nbaR")
library("testthat")

context("Testing class Specimen")

test_that("Constructor works", {
  obj <- Specimen$new()
  expect_is(obj, "Specimen")
})

test_that("toList works", {
  obj <- Specimen$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Specimen$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
