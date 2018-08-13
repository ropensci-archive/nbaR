library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Specimen")

test_that("Constructor works", {
  obj <- Specimen$new()
  expect_is(obj, "Specimen")

  # test constructor with random arguments
  # test field sourceSystem, type SourceSystem
  obj <- Specimen$new(sourceSystem = SourceSystem$new())
  expect_is(obj, "Specimen")
  # test field sourceSystemId, type character
  obj <- Specimen$new(
    sourceSystemId = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field recordURI, type character
  obj <- Specimen$new(
    recordURI = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field id, type character
  obj <- Specimen$new(
    id = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field unitID, type character
  obj <- Specimen$new(
    unitID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field unitGUID, type character
  obj <- Specimen$new(
    unitGUID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field collectorsFieldNumber, type character
  obj <- Specimen$new(
    collectorsFieldNumber = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field assemblageID, type character
  obj <- Specimen$new(
    assemblageID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field sourceInstitutionID, type character
  obj <- Specimen$new(
    sourceInstitutionID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field sourceID, type character
  obj <- Specimen$new(
    sourceID = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field previousSourceID, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Specimen$new(previousSourceID = randomList)
  expect_is(obj, "Specimen")
  # test field owner, type character
  obj <- Specimen$new(
    owner = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field licenseType, type character
  obj <- Specimen$new(
    licenseType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field license, type character
  obj <- Specimen$new(
    license = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field recordBasis, type character
  obj <- Specimen$new(
    recordBasis = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field kindOfUnit, type character
  obj <- Specimen$new(
    kindOfUnit = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field collectionType, type character
  obj <- Specimen$new(
    collectionType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field sex, type character
  obj <- Specimen$new(
    sex = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field phaseOrStage, type character
  obj <- Specimen$new(
    phaseOrStage = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field title, type character
  obj <- Specimen$new(
    title = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field notes, type character
  obj <- Specimen$new(
    notes = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field preparationType, type character
  obj <- Specimen$new(
    preparationType = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field previousUnitsText, type character
  obj <- Specimen$new(
    previousUnitsText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "Specimen")
  # test field numberOfSpecimen, type integer
  obj <- Specimen$new(numberOfSpecimen = sample(0:10, 1))
  expect_is(obj, "Specimen")
  # test field acquiredFrom, type Agent
  obj <- Specimen$new(acquiredFrom = Agent$new())
  expect_is(obj, "Specimen")
  # test field gatheringEvent, type GatheringEvent
  obj <- Specimen$new(gatheringEvent = GatheringEvent$new())
  expect_is(obj, "Specimen")
  # test field identifications, type list, datatype SpecimenIdentification
  lst <- lapply(1:sample(1:10, 1), function(x) SpecimenIdentification$new())
  obj <- Specimen$new(identifications = lst)
  expect_is(obj, "Specimen")
  # test field associatedMultiMediaUris, type list, datatype ServiceAccessPoint
  lst <- lapply(1:sample(1:10, 1), function(x) ServiceAccessPoint$new())
  obj <- Specimen$new(associatedMultiMediaUris = lst)
  expect_is(obj, "Specimen")
  # test field theme, type list, datatype character
  randomList <- lapply(
    1:sample(5:10, 1),
    function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
  )
  obj <- Specimen$new(theme = randomList)
  expect_is(obj, "Specimen")
})

test_that("toList works", {
  obj <- Specimen$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- Specimen$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
