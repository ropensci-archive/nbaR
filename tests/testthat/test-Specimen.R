# Make a list with random arguments for all fields in the class
args <- list()
args[["sourceSystem"]] <- SourceSystem$new()
args[["sourceSystemId"]] <- random_string()
args[["recordURI"]] <- random_string()
args[["id"]] <- random_string()
args[["unitID"]] <- random_string()
args[["unitGUID"]] <- random_string()
args[["collectorsFieldNumber"]] <- random_string()
args[["assemblageID"]] <- random_string()
args[["sourceInstitutionID"]] <- random_string()
args[["sourceID"]] <- random_string()
args[["previousSourceID"]] <- random_string_list()
args[["owner"]] <- random_string()
args[["licenseType"]] <- random_string()
args[["license"]] <- random_string()
args[["recordBasis"]] <- random_string()
args[["kindOfUnit"]] <- random_string()
args[["collectionType"]] <- random_string()
args[["sex"]] <- random_string()
args[["phaseOrStage"]] <- random_string()
args[["title"]] <- random_string()
args[["notes"]] <- random_string()
args[["preparationType"]] <- random_string()
args[["previousUnitsText"]] <- random_string()
args[["numberOfSpecimen"]] <- sample(0:10, 1)
args[["fromCaptivity"]] <- sample(c(TRUE, FALSE), 1)
args[["objectPublic"]] <- sample(c(TRUE, FALSE), 1)
args[["multiMediaPublic"]] <- sample(c(TRUE, FALSE), 1)
args[["acquiredFrom"]] <- Agent$new()
args[["gatheringEvent"]] <- GatheringEvent$new()
args[["identifications"]] <- lapply(
  1:sample(1:10, 1),
  function(x) SpecimenIdentification$new()
)
args[["associatedMultiMediaUris"]] <- lapply(
  1:sample(1:10, 1),
  function(x) ServiceAccessPoint$new()
)
args[["theme"]] <- random_string_list()

# make Specimen object without and with args
objEmpty <- Specimen$new()
objRand <- do.call(Specimen$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "Specimen")
  expect_s3_class(objRand, "Specimen")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Specimen$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Specimen")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Specimen$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "Specimen")
})

test_that("print works", {
  obj <- Specimen$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
