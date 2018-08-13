library("nbaR")
library("testthat")

set.seed(111)

context("Testing class ScientificName")

test_that("Constructor works", {
  obj <- ScientificName$new()
  expect_is(obj, "ScientificName")

  # test constructor with random arguments
  # test field fullScientificName, type character
  obj <- ScientificName$new(
    fullScientificName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field taxonomicStatus, type character
  obj <- ScientificName$new(
    taxonomicStatus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field genusOrMonomial, type character
  obj <- ScientificName$new(
    genusOrMonomial = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field subgenus, type character
  obj <- ScientificName$new(
    subgenus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field specificEpithet, type character
  obj <- ScientificName$new(
    specificEpithet = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field infraspecificEpithet, type character
  obj <- ScientificName$new(
    infraspecificEpithet = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field infraspecificMarker, type character
  obj <- ScientificName$new(
    infraspecificMarker = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field nameAddendum, type character
  obj <- ScientificName$new(
    nameAddendum = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field authorshipVerbatim, type character
  obj <- ScientificName$new(
    authorshipVerbatim = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field author, type character
  obj <- ScientificName$new(
    author = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field year, type character
  obj <- ScientificName$new(
    year = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field scientificNameGroup, type character
  obj <- ScientificName$new(
    scientificNameGroup = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "ScientificName")
  # test field references, type list, datatype Reference
  lst <- lapply(1:sample(1:10, 1), function(x) Reference$new())
  obj <- ScientificName$new(references = lst)
  expect_is(obj, "ScientificName")
  # test field experts, type list, datatype Expert
  lst <- lapply(1:sample(1:10, 1), function(x) Expert$new())
  obj <- ScientificName$new(experts = lst)
  expect_is(obj, "ScientificName")
})

test_that("toList works", {
  obj <- ScientificName$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- ScientificName$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
