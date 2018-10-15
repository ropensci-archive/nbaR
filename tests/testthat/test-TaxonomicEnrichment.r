library("nbaR")
library("testthat")

set.seed(111)

context("Testing class TaxonomicEnrichment")

# Make a list with random arguments for all fields in the class
args <- list()
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) SummaryVernacularName$new()
)
args[["vernacularNames"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) SummaryScientificName$new()
)
args[["synonyms"]] <- randomList
args[["sourceSystem"]] <- SummarySourceSystem$new()
args[["taxonId"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make TaxonomicEnrichment object without and with args
objEmpty <- TaxonomicEnrichment$new()
objRand <- do.call(TaxonomicEnrichment$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "TaxonomicEnrichment")
  expect_is(objRand, "TaxonomicEnrichment")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- TaxonomicEnrichment$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "TaxonomicEnrichment")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- TaxonomicEnrichment$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "TaxonomicEnrichment")
})
