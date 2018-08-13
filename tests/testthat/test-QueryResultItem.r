library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QueryResultItem")

# Make a list with random arguments for all fields in the class
args <- list()
args[["score"]] <- runif(1)

# make QueryResultItem object without and with args
objEmpty <- QueryResultItem$new()
objRand <- do.call(QueryResultItem$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "QueryResultItem")
  expect_is(objRand, "QueryResultItem")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryResultItem$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryResultItem")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryResultItem$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryResultItem")
})
