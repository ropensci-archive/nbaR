library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Polygon")

test_that("Constructor works", {
  obj <- Polygon$new()
  expect_is(obj, "Polygon")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- Polygon$new(crs = Crs$new())
  expect_is(obj, "Polygon")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Polygon$new(bbox = randomList)
  expect_is(obj, "Polygon")
  # test field coordinates, type list, datatype LngLatAlt
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Polygon$new(coordinates = randomList)
  expect_is(obj, "Polygon")
})

test_that("toList works", {
  obj <- Polygon$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Polygon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
