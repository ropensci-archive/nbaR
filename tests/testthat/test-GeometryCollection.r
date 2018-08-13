library("nbaR")
library("testthat")

set.seed(111)

context("Testing class GeometryCollection")

test_that("Constructor works", {
  obj <- GeometryCollection$new()
  expect_is(obj, "GeometryCollection")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- GeometryCollection$new(crs = Crs$new())
  expect_is(obj, "GeometryCollection")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- GeometryCollection$new(bbox = randomList)
  expect_is(obj, "GeometryCollection")
  # test field geometries, type list, datatype list
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- GeometryCollection$new(geometries = randomList)
  expect_is(obj, "GeometryCollection")
})

test_that("toList works", {
  obj <- GeometryCollection$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GeometryCollection$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
