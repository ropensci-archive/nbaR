library("nbaR")
library("testthat")

set.seed(111)

context("Testing class BioStratigraphy")

test_that("Constructor works", {
  obj <- BioStratigraphy$new()
  expect_is(obj, "BioStratigraphy")

  # test constructor with random arguments
  # test field youngBioDatingQualifier, type character
  obj <- BioStratigraphy$new(
    youngBioDatingQualifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field youngBioName, type character
  obj <- BioStratigraphy$new(
    youngBioName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field youngFossilZone, type character
  obj <- BioStratigraphy$new(
    youngFossilZone = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field youngFossilSubZone, type character
  obj <- BioStratigraphy$new(
    youngFossilSubZone = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field youngBioCertainty, type character
  obj <- BioStratigraphy$new(
    youngBioCertainty = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field youngStratType, type character
  obj <- BioStratigraphy$new(
    youngStratType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field bioDatingQualifier, type character
  obj <- BioStratigraphy$new(
    bioDatingQualifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field rangePosition, type character
  obj <- BioStratigraphy$new(
    rangePosition = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field oldBioName, type character
  obj <- BioStratigraphy$new(
    oldBioName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field bioIdentifier, type character
  obj <- BioStratigraphy$new(
    bioIdentifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field oldFossilzone, type character
  obj <- BioStratigraphy$new(
    oldFossilzone = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field oldFossilSubzone, type character
  obj <- BioStratigraphy$new(
    oldFossilSubzone = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field oldBioCertainty, type character
  obj <- BioStratigraphy$new(
    oldBioCertainty = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
  # test field oldBioStratType, type character
  obj <- BioStratigraphy$new(
    oldBioStratType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "BioStratigraphy")
})

test_that("toList works", {
  obj <- BioStratigraphy$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- BioStratigraphy$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
