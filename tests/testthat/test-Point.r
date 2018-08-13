library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Point")

test_that("Constructor works", {
  obj <- Point$new()
  expect_is(obj, "Point")

  # test constructor with random arguments
  # test field crs, type Crs
  obj <- Point$new(crs = Crs$new())
  expect_is(obj, "Point")
  # test field bbox, type list, datatype numeric
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Point$new(bbox = randomList)
  expect_is(obj, "Point")
  # test field coordinates, type LngLatAlt
  obj <- Point$new(coordinates = LngLatAlt$new())
  expect_is(obj, "Point")
})

test_that("toList works", {
  obj <- Point$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Point$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
