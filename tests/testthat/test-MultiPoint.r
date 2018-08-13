library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiPoint")

test_that("Constructor works", {
  obj <- MultiPoint$new()
  expect_is(obj, "MultiPoint")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- MultiPoint$new(crs = Crs$new())
  expect_is(obj, "MultiPoint")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiPoint$new(bbox = randomList)
  expect_is(obj, "MultiPoint")
  # test field coordinates, type list, datatype LngLatAlt
  lst <- lapply(1:sample(1:10, 1), function(x) LngLatAlt$new())
  obj <- MultiPoint$new(coordinates = lst)
  expect_is(obj, "MultiPoint")
})

test_that("toList works", {
  obj <- MultiPoint$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiPoint$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
