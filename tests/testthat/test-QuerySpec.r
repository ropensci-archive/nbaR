library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QuerySpec")

# Make a list with random arguments for all fields in the class
args <- list()
args[["constantScore"]] <- sample(c(TRUE, FALSE), 1)
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["fields"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) QueryCondition$new()
)
args[["conditions"]] <- randomList
args[["logicalOperator"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) SortField$new()
)
args[["sortFields"]] <- randomList
args[["from"]] <- sample(0:10, 1)
args[["size"]] <- sample(0:10, 1)

# make QuerySpec object without and with args
objEmpty <- QuerySpec$new()
objRand <- do.call(QuerySpec$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "QuerySpec")
  expect_is(objRand, "QuerySpec")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- QuerySpec$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "QuerySpec")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- QuerySpec$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "QuerySpec")
})
