library("nbaR")
library("testthat")

set.seed(111)

context("Testing class FeatureCollection")

# Make a list with random arguments for all fields in the class
args <- list()
args[["crs"]] <- Crs$new()
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["bbox"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Feature$new()
)
args[["features"]] <- randomList

# make FeatureCollection object without and with args
objEmpty <- FeatureCollection$new()
objRand <- do.call(FeatureCollection$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "FeatureCollection")
  expect_is(objRand, "FeatureCollection")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- FeatureCollection$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "FeatureCollection")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- FeatureCollection$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "FeatureCollection")
})
