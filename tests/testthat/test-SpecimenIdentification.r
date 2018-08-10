
library("nbaR")
library("testthat")

context("Testing class SpecimenIdentification")

test_that("Constructor works", {
  obj <- SpecimenIdentification$new()
  expect_is(obj, "SpecimenIdentification")  
})

test_that("toList works", {
  obj <- SpecimenIdentification$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- SpecimenIdentification$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

