library("nbaR")
library("testthat")

set.seed(111)

context("Testing class ChronoStratigraphy")

test_that("Constructor works", {
  obj <- ChronoStratigraphy$new()
  expect_is(obj, "ChronoStratigraphy")

  # test constructor with random arguments
  # test field youngRegionalSubstage, type character
  obj <- ChronoStratigraphy$new(
    youngRegionalSubstage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngRegionalStage, type character
  obj <- ChronoStratigraphy$new(
    youngRegionalStage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngRegionalSeries, type character
  obj <- ChronoStratigraphy$new(
    youngRegionalSeries = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngDatingQualifier, type character
  obj <- ChronoStratigraphy$new(
    youngDatingQualifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngInternSystem, type character
  obj <- ChronoStratigraphy$new(
    youngInternSystem = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngInternSubstage, type character
  obj <- ChronoStratigraphy$new(
    youngInternSubstage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngInternStage, type character
  obj <- ChronoStratigraphy$new(
    youngInternStage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngInternSeries, type character
  obj <- ChronoStratigraphy$new(
    youngInternSeries = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngInternErathem, type character
  obj <- ChronoStratigraphy$new(
    youngInternErathem = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngInternEonothem, type character
  obj <- ChronoStratigraphy$new(
    youngInternEonothem = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngChronoName, type character
  obj <- ChronoStratigraphy$new(
    youngChronoName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field youngCertainty, type character
  obj <- ChronoStratigraphy$new(
    youngCertainty = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldDatingQualifier, type character
  obj <- ChronoStratigraphy$new(
    oldDatingQualifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldRegionalSubstage, type character
  obj <- ChronoStratigraphy$new(
    oldRegionalSubstage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldRegionalStage, type character
  obj <- ChronoStratigraphy$new(
    oldRegionalStage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldRegionalSeries, type character
  obj <- ChronoStratigraphy$new(
    oldRegionalSeries = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldInternSystem, type character
  obj <- ChronoStratigraphy$new(
    oldInternSystem = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldInternSubstage, type character
  obj <- ChronoStratigraphy$new(
    oldInternSubstage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldInternStage, type character
  obj <- ChronoStratigraphy$new(
    oldInternStage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldInternSeries, type character
  obj <- ChronoStratigraphy$new(
    oldInternSeries = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldInternErathem, type character
  obj <- ChronoStratigraphy$new(
    oldInternErathem = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldInternEonothem, type character
  obj <- ChronoStratigraphy$new(
    oldInternEonothem = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldChronoName, type character
  obj <- ChronoStratigraphy$new(
    oldChronoName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field chronoIdentifier, type character
  obj <- ChronoStratigraphy$new(
    chronoIdentifier = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
  # test field oldCertainty, type character
  obj <- ChronoStratigraphy$new(
    oldCertainty = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ChronoStratigraphy")
})

test_that("toList works", {
  obj <- ChronoStratigraphy$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- ChronoStratigraphy$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
