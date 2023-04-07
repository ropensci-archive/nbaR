# Make a list with random arguments for all fields in the class
args <- list()
random_string_list() <- lapply(
  1:sample(1:10, 1),
  function(x) SummaryVernacularName$new()
)
args[["vernacularNames"]] <- random_string_list()
random_string_list() <- lapply(
  1:sample(1:10, 1),
  function(x) SummaryScientificName$new()
)
args[["synonyms"]] <- random_string_list()
args[["sourceSystem"]] <- SummarySourceSystem$new()
args[["taxonId"]] <- random_string()

# make TaxonomicEnrichment object without and with args
objEmpty <- TaxonomicEnrichment$new()
objRand <- do.call(TaxonomicEnrichment$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "TaxonomicEnrichment")
  expect_s3_class(objRand, "TaxonomicEnrichment")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- TaxonomicEnrichment$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "TaxonomicEnrichment")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- TaxonomicEnrichment$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "TaxonomicEnrichment")
})

test_that("print works", {
  obj <- TaxonomicEnrichment$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
