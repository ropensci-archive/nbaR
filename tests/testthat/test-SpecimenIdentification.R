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
args[["preferred"]] <- sample(c(TRUE, FALSE), 1)
args[["verificationStatus"]] <- random_string()
args[["rockType"]] <- random_string()
args[["associatedFossilAssemblage"]] <- random_string()
args[["rockMineralUsage"]] <- random_string()
args[["associatedMineralName"]] <- random_string()
args[["remarks"]] <- random_string()

# make SpecimenIdentification object without and with args
objEmpty <- SpecimenIdentification$new()
objRand <- do.call(SpecimenIdentification$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "SpecimenIdentification")
  expect_s3_class(objRand, "SpecimenIdentification")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- SpecimenIdentification$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SpecimenIdentification")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- SpecimenIdentification$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "SpecimenIdentification")
})

test_that("print works", {
  obj <- SpecimenIdentification$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
