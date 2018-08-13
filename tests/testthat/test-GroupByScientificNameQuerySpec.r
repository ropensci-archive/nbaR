library("nbaR")
library("testthat")

set.seed(111)

context("Testing class GroupByScientificNameQuerySpec")

test_that("Constructor works", {
  obj <- GroupByScientificNameQuerySpec$new()
  expect_is(obj, "GroupByScientificNameQuerySpec")

  # test constructor with random arguments
  # test field fields, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- GroupByScientificNameQuerySpec$new(fields = randomList)
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field conditions, type list, datatype QueryCondition
  lst <- lapply(1:sample(1:10, 1), function(x) QueryCondition$new())
  obj <- GroupByScientificNameQuerySpec$new(conditions = lst)
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field logicalOperator, type character
  obj <- GroupByScientificNameQuerySpec$new(
    logicalOperator = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field sortFields, type list, datatype SortField
  lst <- lapply(1:sample(1:10, 1), function(x) SortField$new())
  obj <- GroupByScientificNameQuerySpec$new(sortFields = lst)
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field from, type integer
  obj <- GroupByScientificNameQuerySpec$new(from = sample(0:10, 1))
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field size, type integer
  obj <- GroupByScientificNameQuerySpec$new(size = sample(0:10, 1))
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field groupSort, type character
  obj <- GroupByScientificNameQuerySpec$new(
    groupSort = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field groupFilter, type Filter
  obj <- GroupByScientificNameQuerySpec$new(groupFilter = Filter$new())
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field specimensFrom, type integer
  obj <- GroupByScientificNameQuerySpec$new(specimensFrom = sample(0:10, 1))
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field specimensSize, type integer
  obj <- GroupByScientificNameQuerySpec$new(specimensSize = sample(0:10, 1))
  expect_is(obj, "GroupByScientificNameQuerySpec")
  # test field specimensSortFields, type list, datatype SortField
  lst <- lapply(1:sample(1:10, 1), function(x) SortField$new())
  obj <- GroupByScientificNameQuerySpec$new(specimensSortFields = lst)
  expect_is(obj, "GroupByScientificNameQuerySpec")
})

test_that("toList works", {
  obj <- GroupByScientificNameQuerySpec$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GroupByScientificNameQuerySpec$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
