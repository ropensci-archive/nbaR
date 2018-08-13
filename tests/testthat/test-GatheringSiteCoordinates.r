library("nbaR")
library("testthat")

set.seed(111)

context("Testing class GatheringSiteCoordinates")

test_that("Constructor works", {
  obj <- GatheringSiteCoordinates$new()
  expect_is(obj, "GatheringSiteCoordinates")

  # test constructor with random arguments
  # test field longitudeDecimal, type numeric
  obj <- GatheringSiteCoordinates$new(longitudeDecimal = runif(1))
  expect_is(obj, "GatheringSiteCoordinates")
  # test field latitudeDecimal, type numeric
  obj <- GatheringSiteCoordinates$new(latitudeDecimal = runif(1))
  expect_is(obj, "GatheringSiteCoordinates")
  # test field gridCellSystem, type character
  obj <- GatheringSiteCoordinates$new(
    gridCellSystem = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringSiteCoordinates")
  # test field gridLatitudeDecimal, type numeric
  obj <- GatheringSiteCoordinates$new(gridLatitudeDecimal = runif(1))
  expect_is(obj, "GatheringSiteCoordinates")
  # test field gridLongitudeDecimal, type numeric
  obj <- GatheringSiteCoordinates$new(gridLongitudeDecimal = runif(1))
  expect_is(obj, "GatheringSiteCoordinates")
  # test field gridCellCode, type character
  obj <- GatheringSiteCoordinates$new(
    gridCellCode = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringSiteCoordinates")
  # test field gridQualifier, type character
  obj <- GatheringSiteCoordinates$new(
    gridQualifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringSiteCoordinates")
  # test field geoShape, type Point
  obj <- GatheringSiteCoordinates$new(geoShape = Point$new())
  expect_is(obj, "GatheringSiteCoordinates")
})

test_that("toList works", {
  obj <- GatheringSiteCoordinates$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GatheringSiteCoordinates$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
