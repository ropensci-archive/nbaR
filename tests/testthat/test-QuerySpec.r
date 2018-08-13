library("nbaR")
library("testthat")

set.seed(111)

context("Testing class QuerySpec")

test_that("Constructor works", {
  obj <- QuerySpec$new()
  expect_is(obj, "QuerySpec")

  # test constructor with random arguments
  # test field fields, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- QuerySpec$new(fields = randomList)
  expect_is(obj, "QuerySpec")
  # test field conditions, type list, datatype QueryCondition
  lst <- lapply(1:sample(1:10, 1), function(x) QueryCondition$new())
  obj <- QuerySpec$new(conditions = lst)
  expect_is(obj, "QuerySpec")
  # test field logicalOperator, type character
  obj <- QuerySpec$new(
    logicalOperator = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "QuerySpec")
  # test field sortFields, type list, datatype SortField
  lst <- lapply(1:sample(1:10, 1), function(x) SortField$new())
  obj <- QuerySpec$new(sortFields = lst)
  expect_is(obj, "QuerySpec")
  # test field from, type integer
  obj <- QuerySpec$new(from = sample(0:10, 1))
  expect_is(obj, "QuerySpec")
  # test field size, type integer
  obj <- QuerySpec$new(size = sample(0:10, 1))
  expect_is(obj, "QuerySpec")
})

test_that("toList works", {
  obj <- QuerySpec$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- QuerySpec$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
