library("nbaR")
library("testthat")

set.seed(111)

context("Testing class TaxonomicEnrichment")

test_that("Constructor works", {
  obj <- TaxonomicEnrichment$new()
  expect_is(obj, "TaxonomicEnrichment")

  # test constructor with random arguments
  # test field vernacularNames, type list, datatype SummaryVernacularName
  lst <- lapply(1:sample(1:10, 1), function(x) SummaryVernacularName$new())
  obj <- TaxonomicEnrichment$new(vernacularNames = lst)
  expect_is(obj, "TaxonomicEnrichment")
  # test field synonyms, type list, datatype SummaryScientificName
  lst <- lapply(1:sample(1:10, 1), function(x) SummaryScientificName$new())
  obj <- TaxonomicEnrichment$new(synonyms = lst)
  expect_is(obj, "TaxonomicEnrichment")
  # test field sourceSystem, type SummarySourceSystem
  obj <- TaxonomicEnrichment$new(sourceSystem = SummarySourceSystem$new())
  expect_is(obj, "TaxonomicEnrichment")
  # test field taxonId, type character
  obj <- TaxonomicEnrichment$new(
    taxonId = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "TaxonomicEnrichment")
})

test_that("toList works", {
  obj <- TaxonomicEnrichment$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- TaxonomicEnrichment$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
