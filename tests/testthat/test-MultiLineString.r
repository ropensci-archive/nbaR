library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiLineString")

test_that("Constructor works", {
  obj <- MultiLineString$new()
  expect_is(obj, "MultiLineString")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- MultiLineString$new(crs = Crs$new())
  expect_is(obj, "MultiLineString")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiLineString$new(bbox = randomList)
  expect_is(obj, "MultiLineString")
  # test field coordinates, type list, datatype LngLatAlt
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiLineString$new(coordinates = randomList)
  expect_is(obj, "MultiLineString")
})

test_that("toList works", {
  obj <- MultiLineString$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiLineString$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
