library("nbaR")
library("testthat")

set.seed(111)

context("Testing class FeatureCollection")

test_that("Constructor works", {
  obj <- FeatureCollection$new()
  expect_is(obj, "FeatureCollection")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- FeatureCollection$new(crs = Crs$new())
  expect_is(obj, "FeatureCollection")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- FeatureCollection$new(bbox = randomList)
  expect_is(obj, "FeatureCollection")
  # test field features, type list, datatype Feature
  lst <- lapply(1:sample(1:10, 1), function(x) Feature$new())
  obj <- FeatureCollection$new(features = lst)
  expect_is(obj, "FeatureCollection")
})

test_that("toList works", {
  obj <- FeatureCollection$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- FeatureCollection$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
