library("nbaR")
library("testthat")

set.seed(111)

context("Testing class GeoJsonObject")

test_that("Constructor works", {
  obj <- GeoJsonObject$new()
  expect_is(obj, "GeoJsonObject")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- GeoJsonObject$new(crs = Crs$new())
  expect_is(obj, "GeoJsonObject")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- GeoJsonObject$new(bbox = randomList)
  expect_is(obj, "GeoJsonObject")
})

test_that("toList works", {
  obj <- GeoJsonObject$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GeoJsonObject$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
