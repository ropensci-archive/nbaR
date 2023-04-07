# Make a list with random arguments for all fields in the class
args <- list()
args[["sourceSystem"]] <- SourceSystem$new()
args[["sourceSystemId"]] <- random_string()
args[["recordURI"]] <- random_string()
args[["id"]] <- random_string()
args[["sourceInstitutionID"]] <- random_string()
args[["sourceID"]] <- random_string()
args[["owner"]] <- random_string()
args[["licenseType"]] <- random_string()
args[["license"]] <- random_string()
args[["unitID"]] <- random_string()
args[["collectionType"]] <- random_string()
args[["title"]] <- random_string()
args[["caption"]] <- random_string()
args[["description"]] <- random_string()
args[["serviceAccessPoints"]] <- lapply(
  1:sample(1:10, 1),
  function(x) ServiceAccessPoint$new()
)
args[["type"]] <- random_string()
args[["taxonCount"]] <- sample(0:10, 1)
args[["creator"]] <- random_string()
args[["copyrightText"]] <- random_string()
args[["associatedSpecimenReference"]] <- random_string()
args[["associatedTaxonReference"]] <- random_string()
args[["multiMediaPublic"]] <- sample(c(TRUE, FALSE), 1)
args[["subjectParts"]] <- random_string_list()
args[["subjectOrientations"]] <- random_string_list()
args[["phasesOrStages"]] <- random_string_list()
args[["sexes"]] <- random_string_list()
args[["gatheringEvents"]] <- lapply(
  1:sample(1:10, 1),
  function(x) MultiMediaGatheringEvent$new()
)
args[["identifications"]] <- lapply(
  1:sample(1:10, 1),
  function(x) MultiMediaContentIdentification$new()
)
args[["theme"]] <- random_string_list()
args[["associatedSpecimen"]] <- Specimen$new()
args[["associatedTaxon"]] <- Taxon$new()

# make MultiMediaObject object without and with args
objEmpty <- MultiMediaObject$new()
objRand <- do.call(MultiMediaObject$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "MultiMediaObject")
  expect_s3_class(objRand, "MultiMediaObject")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- MultiMediaObject$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "MultiMediaObject")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- MultiMediaObject$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "MultiMediaObject")
})

test_that("print works", {
  obj <- MultiMediaObject$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
