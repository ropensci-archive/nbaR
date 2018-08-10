
library("nbaR")
library("testthat")

context("Testing class VernacularName")

test_that("Constructor works", {
  obj <- VernacularName$new()
  expect_is(obj, "VernacularName")  
})

test_that("toList works", {
  obj <- VernacularName$new()
  l <- obj$toList()
  expect_is(l, "list")  
})

test_that("toJSONString works", {
  obj <- VernacularName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})

