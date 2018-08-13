library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QueryResultItemObject")

# Make a list with random arguments for all fields in the class
args <- list()
args[["score"]] <- runif(1)

# make QueryResultItemObject object without and with args
objEmpty <- QueryResultItemObject$new()
objRand <- do.call(QueryResultItemObject$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "QueryResultItemObject")
  expect_is(objRand, "QueryResultItemObject")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryResultItemObject$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryResultItemObject")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryResultItemObject$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryResultItemObject")
})
