library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiMediaContentIdentification")

test_that("Constructor works", {
  obj <- MultiMediaContentIdentification$new()
  expect_is(obj, "MultiMediaContentIdentification")

  # test constructor with random arguments
  # test field taxonRank, type character
  obj <- MultiMediaContentIdentification$new(
    taxonRank = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaContentIdentification")
  # test field scientificName, type ScientificName
  obj <- MultiMediaContentIdentification$new(scientificName = ScientificName$new())
  expect_is(obj, "MultiMediaContentIdentification")
  # test field typeStatus, type character
  obj <- MultiMediaContentIdentification$new(
    typeStatus = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaContentIdentification")
  # test field dateIdentified, type character
  randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
  obj <- MultiMediaContentIdentification$new(dateIdentified = randomDate)
  expect_is(obj, "MultiMediaContentIdentification")
  # test field defaultClassification, type DefaultClassification
  obj <- MultiMediaContentIdentification$new(defaultClassification = DefaultClassification$new())
  expect_is(obj, "MultiMediaContentIdentification")
  # test field systemClassification, type list, datatype Monomial
  lst <- lapply(1:sample(1:10, 1), function(x) Monomial$new())
  obj <- MultiMediaContentIdentification$new(systemClassification = lst)
  expect_is(obj, "MultiMediaContentIdentification")
  # test field vernacularNames, type list, datatype VernacularName
  lst <- lapply(1:sample(1:10, 1), function(x) VernacularName$new())
  obj <- MultiMediaContentIdentification$new(vernacularNames = lst)
  expect_is(obj, "MultiMediaContentIdentification")
  # test field identificationQualifiers, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiMediaContentIdentification$new(identificationQualifiers = randomList)
  expect_is(obj, "MultiMediaContentIdentification")
  # test field identifiers, type list, datatype Agent
  lst <- lapply(1:sample(1:10, 1), function(x) Agent$new())
  obj <- MultiMediaContentIdentification$new(identifiers = lst)
  expect_is(obj, "MultiMediaContentIdentification")
  # test field taxonomicEnrichments, type list, datatype TaxonomicEnrichment
  lst <- lapply(1:sample(1:10, 1), function(x) TaxonomicEnrichment$new())
  obj <- MultiMediaContentIdentification$new(taxonomicEnrichments = lst)
  expect_is(obj, "MultiMediaContentIdentification")
})

test_that("toList works", {
  obj <- MultiMediaContentIdentification$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiMediaContentIdentification$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
