library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SummaryScientificName")

test_that("Constructor works", {
  obj <- SummaryScientificName$new()
  expect_is(obj, "SummaryScientificName")

  # test constructor with random arguments
  # test field fullScientificName, type character
  obj <- SummaryScientificName$new(
    fullScientificName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryScientificName")
  # test field taxonomicStatus, type character
  obj <- SummaryScientificName$new(
    taxonomicStatus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryScientificName")
  # test field genusOrMonomial, type character
  obj <- SummaryScientificName$new(
    genusOrMonomial = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryScientificName")
  # test field subgenus, type character
  obj <- SummaryScientificName$new(
    subgenus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryScientificName")
  # test field specificEpithet, type character
  obj <- SummaryScientificName$new(
    specificEpithet = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryScientificName")
  # test field infraspecificEpithet, type character
  obj <- SummaryScientificName$new(
    infraspecificEpithet = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryScientificName")
  # test field authorshipVerbatim, type character
  obj <- SummaryScientificName$new(
    authorshipVerbatim = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SummaryScientificName")
})

test_that("toList works", {
  obj <- SummaryScientificName$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SummaryScientificName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
