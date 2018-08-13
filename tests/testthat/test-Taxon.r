library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Taxon")

test_that("Constructor works", {
  obj <- Taxon$new()
  expect_is(obj, "Taxon")

  # test constructor with random arguments
  # test field sourceSystem, type SourceSystem
  obj <- Taxon$new(sourceSystem = SourceSystem$new())
  expect_is(obj, "Taxon")
  # test field sourceSystemId, type character
  obj <- Taxon$new(
    sourceSystemId = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Taxon")
  # test field recordURI, type character
  obj <- Taxon$new(
    recordURI = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Taxon")
  # test field id, type character
  obj <- Taxon$new(
    id = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Taxon")
  # test field sourceSystemParentId, type character
  obj <- Taxon$new(
    sourceSystemParentId = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Taxon")
  # test field taxonRank, type character
  obj <- Taxon$new(
    taxonRank = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Taxon")
  # test field taxonRemarks, type character
  obj <- Taxon$new(
    taxonRemarks = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Taxon")
  # test field occurrenceStatusVerbatim, type character
  obj <- Taxon$new(
    occurrenceStatusVerbatim = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Taxon")
  # test field acceptedName, type ScientificName
  obj <- Taxon$new(acceptedName = ScientificName$new())
  expect_is(obj, "Taxon")
  # test field defaultClassification, type DefaultClassification
  obj <- Taxon$new(defaultClassification = DefaultClassification$new())
  expect_is(obj, "Taxon")
  # test field systemClassification, type list, datatype Monomial
  lst <- lapply(1:sample(1:10, 1), function(x) Monomial$new())
  obj <- Taxon$new(systemClassification = lst)
  expect_is(obj, "Taxon")
  # test field synonyms, type list, datatype ScientificName
  lst <- lapply(1:sample(1:10, 1), function(x) ScientificName$new())
  obj <- Taxon$new(synonyms = lst)
  expect_is(obj, "Taxon")
  # test field vernacularNames, type list, datatype VernacularName
  lst <- lapply(1:sample(1:10, 1), function(x) VernacularName$new())
  obj <- Taxon$new(vernacularNames = lst)
  expect_is(obj, "Taxon")
  # test field descriptions, type list, datatype TaxonDescription
  lst <- lapply(1:sample(1:10, 1), function(x) TaxonDescription$new())
  obj <- Taxon$new(descriptions = lst)
  expect_is(obj, "Taxon")
  # test field references, type list, datatype Reference
  lst <- lapply(1:sample(1:10, 1), function(x) Reference$new())
  obj <- Taxon$new(references = lst)
  expect_is(obj, "Taxon")
  # test field experts, type list, datatype Expert
  lst <- lapply(1:sample(1:10, 1), function(x) Expert$new())
  obj <- Taxon$new(experts = lst)
  expect_is(obj, "Taxon")
  # test field validName, type ScientificName
  obj <- Taxon$new(validName = ScientificName$new())
  expect_is(obj, "Taxon")
})

test_that("toList works", {
  obj <- Taxon$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Taxon$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
