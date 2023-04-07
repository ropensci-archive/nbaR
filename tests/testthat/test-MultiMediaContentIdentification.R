# Make a list with random arguments for all fields in the class
args <- list()
args[["taxonRank"]] <- random_string()
args[["scientificName"]] <- ScientificName$new()
args[["typeStatus"]] <- random_string()
randomDate <- random_date()
args[["dateIdentified"]] <- randomDate
args[["defaultClassification"]] <- DefaultClassification$new()
args[["systemClassification"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Monomial$new()
)
args[["vernacularNames"]] <- lapply(
  1:sample(1:10, 1),
  function(x) VernacularName$new()
)
args[["identificationQualifiers"]] <- random_string_list()
args[["identifiers"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Agent$new()
)
args[["taxonomicEnrichments"]] <- lapply(
  1:sample(1:10, 1),
  function(x) TaxonomicEnrichment$new()
)

# make MultiMediaContentIdentification object without and with args
objEmpty <- MultiMediaContentIdentification$new()
objRand <- do.call(MultiMediaContentIdentification$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "MultiMediaContentIdentification")
  expect_s3_class(objRand, "MultiMediaContentIdentification")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- MultiMediaContentIdentification$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "MultiMediaContentIdentification")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- MultiMediaContentIdentification$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "MultiMediaContentIdentification")
})

test_that("print works", {
  obj <- MultiMediaContentIdentification$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
