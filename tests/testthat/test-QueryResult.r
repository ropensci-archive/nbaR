library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QueryResult")

# Make a list with random arguments for all fields in the class
args <- list()
args[["totalSize"]] <- runif(1)
randomList <- lapply(1:sample(1:10, 1), function(x) QueryResultItemObject$new())
args[["resultSet"]] <- randomList

# make QueryResult object without and with args
objEmpty <- QueryResult$new()
objRand <- do.call(QueryResult$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "QueryResult")
  expect_is(objRand, "QueryResult")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QueryResult$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryResult")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QueryResult$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "QueryResult")
})
