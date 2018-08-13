library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiPolygon")

test_that("Constructor works", {
  obj <- MultiPolygon$new()
  expect_is(obj, "MultiPolygon")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- MultiPolygon$new(crs = Crs$new())
  expect_is(obj, "MultiPolygon")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiPolygon$new(bbox = randomList)
  expect_is(obj, "MultiPolygon")
  # test field coordinates, type list, datatype LngLatAlt
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiPolygon$new(coordinates = randomList)
  expect_is(obj, "MultiPolygon")
})

test_that("toList works", {
  obj <- MultiPolygon$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiPolygon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
