library("nbaR")
library("testthat")

set.seed(111)

context("Testing class LineString")

test_that("Constructor works", {
  obj <- LineString$new()
  expect_is(obj, "LineString")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- LineString$new(crs = Crs$new())
  expect_is(obj, "LineString")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- LineString$new(bbox = randomList)
  expect_is(obj, "LineString")
  # test field coordinates, type list, datatype LngLatAlt
  lst <- lapply(1:sample(1:10, 1), function(x) LngLatAlt$new())
  obj <- LineString$new(coordinates = lst)
  expect_is(obj, "LineString")
})

test_that("toList works", {
  obj <- LineString$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- LineString$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
