library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiPolygon")

# Make a list with random arguments for all fields in the class
args <- list()
args[["crs"]] <- Crs$new()
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["bbox"]] <- randomList
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["coordinates"]] <- randomList

# make MultiPolygon object without and with args
objEmpty <- MultiPolygon$new()
objRand <- do.call(MultiPolygon$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "MultiPolygon")
  expect_is(objRand, "MultiPolygon")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- MultiPolygon$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "MultiPolygon")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- MultiPolygon$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "MultiPolygon")
})
