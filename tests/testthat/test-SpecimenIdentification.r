library("nbaR")
library("testthat")

set.seed(111)

context("Testing class SpecimenIdentification")

# Make a list with random arguments for all fields in the class
args <- list()
args[["taxonRank"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["scientificName"]] <- ScientificName$new()
args[["typeStatus"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
  as.Date("2018/06/04"),
  by = "day"
), 1))
args[["dateIdentified"]] <- randomDate
args[["defaultClassification"]] <- DefaultClassification$new()
randomList <- lapply(1:sample(1:10, 1), function(x) Monomial$new())
args[["systemClassification"]] <- randomList
randomList <- lapply(1:sample(1:10, 1), function(x) VernacularName$new())
args[["vernacularNames"]] <- randomList
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["identificationQualifiers"]] <- randomList
randomList <- lapply(1:sample(1:10, 1), function(x) Agent$new())
args[["identifiers"]] <- randomList
randomList <- lapply(1:sample(1:10, 1), function(x) TaxonomicEnrichment$new())
args[["taxonomicEnrichments"]] <- randomList
args[["verificationStatus"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["rockType"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["associatedFossilAssemblage"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["rockMineralUsage"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["associatedMineralName"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["remarks"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make SpecimenIdentification object without and with args
objEmpty <- SpecimenIdentification$new()
objRand <- do.call(SpecimenIdentification$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "SpecimenIdentification")
  expect_is(objRand, "SpecimenIdentification")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- SpecimenIdentification$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "SpecimenIdentification")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- SpecimenIdentification$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "SpecimenIdentification")
})
