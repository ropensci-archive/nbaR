library("nbaR")
library("testthat")

set.seed(111)

context("Testing class GeoArea")

test_that("Constructor works", {
  obj <- GeoArea$new()
  expect_is(obj, "GeoArea")

  # test constructor with random arguments
  # test field sourceSystem, type SourceSystem
  obj <- GeoArea$new(sourceSystem = SourceSystem$new())
  expect_is(obj, "GeoArea")
  # test field sourceSystemId, type character
  obj <- GeoArea$new(
    sourceSystemId = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
  # test field recordURI, type character
  obj <- GeoArea$new(
    recordURI = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
  # test field id, type character
  obj <- GeoArea$new(
    id = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
  # test field areaType, type character
  obj <- GeoArea$new(
    areaType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
  # test field locality, type character
  obj <- GeoArea$new(
    locality = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
  # test field source, type character
  obj <- GeoArea$new(
    source = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
  # test field isoCode, type character
  obj <- GeoArea$new(
    isoCode = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
  # test field countryNL, type character
  obj <- GeoArea$new(
    countryNL = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GeoArea")
})

test_that("toList works", {
  obj <- GeoArea$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GeoArea$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
