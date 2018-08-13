library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Path")

# Make a list with random arguments for all fields in the class
args <- list()

# make Path object without and with args
objEmpty <- Path$new()
objRand <- do.call(Path$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Path")
  expect_is(objRand, "Path")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Path$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Path")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Path$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Path")
})
