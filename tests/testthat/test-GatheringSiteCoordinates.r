library("nbaR")
library("testthat")

set.seed(111)

context("Testing class GatheringSiteCoordinates")

# Make a list with random arguments for all fields in the class
args <- list()
args[["longitudeDecimal"]] <- runif(1)
args[["latitudeDecimal"]] <- runif(1)
args[["gridCellSystem"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["gridLatitudeDecimal"]] <- runif(1)
args[["gridLongitudeDecimal"]] <- runif(1)
args[["gridCellCode"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["gridQualifier"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["geoShape"]] <- Point$new()

# make GatheringSiteCoordinates object without and with args
objEmpty <- GatheringSiteCoordinates$new()
objRand <- do.call(GatheringSiteCoordinates$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "GatheringSiteCoordinates")
  expect_is(objRand, "GatheringSiteCoordinates")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- GatheringSiteCoordinates$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "GatheringSiteCoordinates")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- GatheringSiteCoordinates$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "GatheringSiteCoordinates")
})
