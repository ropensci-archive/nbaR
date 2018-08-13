library("nbaR")
library("testthat")

set.seed(111)

context("Testing class DefaultClassification")

test_that("Constructor works", {
  obj <- DefaultClassification$new()
  expect_is(obj, "DefaultClassification")

  # test constructor with random arguments
  # test field kingdom, type character
  obj <- DefaultClassification$new(
    kingdom = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field phylum, type character
  obj <- DefaultClassification$new(
    phylum = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field className, type character
  obj <- DefaultClassification$new(
    className = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field order, type character
  obj <- DefaultClassification$new(
    order = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field superFamily, type character
  obj <- DefaultClassification$new(
    superFamily = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field family, type character
  obj <- DefaultClassification$new(
    family = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field genus, type character
  obj <- DefaultClassification$new(
    genus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field subgenus, type character
  obj <- DefaultClassification$new(
    subgenus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field specificEpithet, type character
  obj <- DefaultClassification$new(
    specificEpithet = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field infraspecificEpithet, type character
  obj <- DefaultClassification$new(
    infraspecificEpithet = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
  # test field infraspecificRank, type character
  obj <- DefaultClassification$new(
    infraspecificRank = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "DefaultClassification")
})

test_that("toList works", {
  obj <- DefaultClassification$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- DefaultClassification$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
