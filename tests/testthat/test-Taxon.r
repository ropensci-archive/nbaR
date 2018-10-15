library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Taxon")

# Make a list with random arguments for all fields in the class
args <- list()
args[["sourceSystem"]] <- SourceSystem$new()
args[["sourceSystemId"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["recordURI"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["id"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["sourceSystemParentId"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["taxonRank"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["taxonRemarks"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["occurrenceStatusVerbatim"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["acceptedName"]] <- ScientificName$new()
args[["defaultClassification"]] <- DefaultClassification$new()
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Monomial$new()
)
args[["systemClassification"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) ScientificName$new()
)
args[["synonyms"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) VernacularName$new()
)
args[["vernacularNames"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) TaxonDescription$new()
)
args[["descriptions"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Reference$new()
)
args[["references"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Expert$new()
)
args[["experts"]] <- randomList
args[["validName"]] <- ScientificName$new()

# make Taxon object without and with args
objEmpty <- Taxon$new()
objRand <- do.call(Taxon$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Taxon")
  expect_is(objRand, "Taxon")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Taxon$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Taxon")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Taxon$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Taxon")
})
