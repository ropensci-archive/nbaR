library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SpecimenIdentification")

test_that("Constructor works", {
  obj <- SpecimenIdentification$new()
  expect_is(obj, "SpecimenIdentification")

  # test constructor with random arguments
  # test field taxonRank, type character
  obj <- SpecimenIdentification$new(
    taxonRank = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
  # test field scientificName, type ScientificName
  obj <- SpecimenIdentification$new(scientificName = ScientificName$new())
  expect_is(obj, "SpecimenIdentification")
  # test field typeStatus, type character
  obj <- SpecimenIdentification$new(
    typeStatus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
  # test field dateIdentified, type character
  randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
  obj <- SpecimenIdentification$new(dateIdentified = randomDate)
  expect_is(obj, "SpecimenIdentification")
  # test field defaultClassification, type DefaultClassification
  obj <- SpecimenIdentification$new(defaultClassification = DefaultClassification$new())
  expect_is(obj, "SpecimenIdentification")
  # test field systemClassification, type list, datatype Monomial
  lst <- lapply(1:sample(1:10, 1), function(x) Monomial$new())
  obj <- SpecimenIdentification$new(systemClassification = lst)
  expect_is(obj, "SpecimenIdentification")
  # test field vernacularNames, type list, datatype VernacularName
  lst <- lapply(1:sample(1:10, 1), function(x) VernacularName$new())
  obj <- SpecimenIdentification$new(vernacularNames = lst)
  expect_is(obj, "SpecimenIdentification")
  # test field identificationQualifiers, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- SpecimenIdentification$new(identificationQualifiers = randomList)
  expect_is(obj, "SpecimenIdentification")
  # test field identifiers, type list, datatype Agent
  lst <- lapply(1:sample(1:10, 1), function(x) Agent$new())
  obj <- SpecimenIdentification$new(identifiers = lst)
  expect_is(obj, "SpecimenIdentification")
  # test field taxonomicEnrichments, type list, datatype TaxonomicEnrichment
  lst <- lapply(1:sample(1:10, 1), function(x) TaxonomicEnrichment$new())
  obj <- SpecimenIdentification$new(taxonomicEnrichments = lst)
  expect_is(obj, "SpecimenIdentification")
  # test field verificationStatus, type character
  obj <- SpecimenIdentification$new(
    verificationStatus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
  # test field rockType, type character
  obj <- SpecimenIdentification$new(
    rockType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
  # test field associatedFossilAssemblage, type character
  obj <- SpecimenIdentification$new(
    associatedFossilAssemblage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
  # test field rockMineralUsage, type character
  obj <- SpecimenIdentification$new(
    rockMineralUsage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
  # test field associatedMineralName, type character
  obj <- SpecimenIdentification$new(
    associatedMineralName = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
  # test field remarks, type character
  obj <- SpecimenIdentification$new(
    remarks = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "SpecimenIdentification")
})

test_that("toList works", {
  obj <- SpecimenIdentification$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- SpecimenIdentification$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
