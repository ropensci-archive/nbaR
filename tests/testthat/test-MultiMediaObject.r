library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiMediaObject")

test_that("Constructor works", {
  obj <- MultiMediaObject$new()
  expect_is(obj, "MultiMediaObject")

  # test constructor with random arguments
  # test field sourceSystem, type SourceSystem
  obj <- MultiMediaObject$new(sourceSystem = SourceSystem$new())
  expect_is(obj, "MultiMediaObject")
  # test field sourceSystemId, type character
  obj <- MultiMediaObject$new(
    sourceSystemId = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field recordURI, type character
  obj <- MultiMediaObject$new(
    recordURI = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field id, type character
  obj <- MultiMediaObject$new(
    id = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field sourceInstitutionID, type character
  obj <- MultiMediaObject$new(
    sourceInstitutionID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field sourceID, type character
  obj <- MultiMediaObject$new(
    sourceID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field owner, type character
  obj <- MultiMediaObject$new(
    owner = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field licenseType, type character
  obj <- MultiMediaObject$new(
    licenseType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field license, type character
  obj <- MultiMediaObject$new(
    license = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field unitID, type character
  obj <- MultiMediaObject$new(
    unitID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field collectionType, type character
  obj <- MultiMediaObject$new(
    collectionType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field title, type character
  obj <- MultiMediaObject$new(
    title = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field caption, type character
  obj <- MultiMediaObject$new(
    caption = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field description, type character
  obj <- MultiMediaObject$new(
    description = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field serviceAccessPoints, type list, datatype ServiceAccessPoint
  lst <- lapply(1:sample(1:10, 1), function(x) ServiceAccessPoint$new())
  obj <- MultiMediaObject$new(serviceAccessPoints = lst)
  expect_is(obj, "MultiMediaObject")
  # test field type, type character
  obj <- MultiMediaObject$new(
    type = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field taxonCount, type integer
  obj <- MultiMediaObject$new(taxonCount = sample(0:10, 1))
  expect_is(obj, "MultiMediaObject")
  # test field creator, type character
  obj <- MultiMediaObject$new(
    creator = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field copyrightText, type character
  obj <- MultiMediaObject$new(
    copyrightText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field associatedSpecimenReference, type character
  obj <- MultiMediaObject$new(
    associatedSpecimenReference = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field associatedTaxonReference, type character
  obj <- MultiMediaObject$new(
    associatedTaxonReference = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaObject")
  # test field subjectParts, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiMediaObject$new(subjectParts = randomList)
  expect_is(obj, "MultiMediaObject")
  # test field subjectOrientations, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiMediaObject$new(subjectOrientations = randomList)
  expect_is(obj, "MultiMediaObject")
  # test field phasesOrStages, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiMediaObject$new(phasesOrStages = randomList)
  expect_is(obj, "MultiMediaObject")
  # test field sexes, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiMediaObject$new(sexes = randomList)
  expect_is(obj, "MultiMediaObject")
  # test field gatheringEvents, type list, datatype MultiMediaGatheringEvent
  lst <- lapply(1:sample(1:10, 1), function(x) MultiMediaGatheringEvent$new())
  obj <- MultiMediaObject$new(gatheringEvents = lst)
  expect_is(obj, "MultiMediaObject")
  # test field identifications, type list, datatype MultiMediaContentIdentification
  lst <- lapply(1:sample(1:10, 1), function(x) MultiMediaContentIdentification$new())
  obj <- MultiMediaObject$new(identifications = lst)
  expect_is(obj, "MultiMediaObject")
  # test field theme, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- MultiMediaObject$new(theme = randomList)
  expect_is(obj, "MultiMediaObject")
  # test field associatedSpecimen, type Specimen
  obj <- MultiMediaObject$new(associatedSpecimen = Specimen$new())
  expect_is(obj, "MultiMediaObject")
  # test field associatedTaxon, type Taxon
  obj <- MultiMediaObject$new(associatedTaxon = Taxon$new())
  expect_is(obj, "MultiMediaObject")
})

test_that("toList works", {
  obj <- MultiMediaObject$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiMediaObject$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
