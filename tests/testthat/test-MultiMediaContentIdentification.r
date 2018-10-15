library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiMediaContentIdentification")

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
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Monomial$new()
)
args[["systemClassification"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) VernacularName$new()
)
args[["vernacularNames"]] <- randomList
randomList <- lapply(
  1:sample(5:10, 1),
  function(x) paste(sample(letters, sample(1:10, 1)), collapse = "")
)
args[["identificationQualifiers"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Agent$new()
)
args[["identifiers"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) TaxonomicEnrichment$new()
)
args[["taxonomicEnrichments"]] <- randomList

# make MultiMediaContentIdentification object without and with args
objEmpty <- MultiMediaContentIdentification$new()
objRand <- do.call(MultiMediaContentIdentification$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "MultiMediaContentIdentification")
  expect_is(objRand, "MultiMediaContentIdentification")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- MultiMediaContentIdentification$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "MultiMediaContentIdentification")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- MultiMediaContentIdentification$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "MultiMediaContentIdentification")
})
