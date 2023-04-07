# Make a list with random arguments for all fields in the class
args <- list()
args[["projectTitle"]] <- random_string()
args[["worldRegion"]] <- random_string()
args[["continent"]] <- random_string()
args[["country"]] <- random_string()
args[["iso3166Code"]] <- random_string()
args[["provinceState"]] <- random_string()
args[["island"]] <- random_string()
args[["locality"]] <- random_string()
args[["city"]] <- random_string()
args[["sublocality"]] <- random_string()
args[["localityText"]] <- random_string()
randomDate <- random_date()
args[["dateTimeBegin"]] <- randomDate
randomDate <- random_date()
args[["dateTimeEnd"]] <- randomDate
args[["method"]] <- random_string()
args[["altitude"]] <- random_string()
args[["altitudeUnifOfMeasurement"]] <- random_string()
args[["biotopeText"]] <- random_string()
args[["depth"]] <- random_string()
args[["depthUnitOfMeasurement"]] <- random_string()
args[["gatheringPersons"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Person$new()
)
args[["gatheringOrganizations"]] <- lapply(
  1:sample(1:10, 1),
  function(x) Organization$new()
)
args[["siteCoordinates"]] <- lapply(
  1:sample(1:10, 1),
  function(x) GatheringSiteCoordinates$new()
)
args[["namedAreas"]] <- lapply(
  1:sample(1:10, 1),
  function(x) NamedArea$new()
)
args[["associatedTaxa"]] <- lapply(
  1:sample(1:10, 1),
  function(x) AssociatedTaxon$new()
)
args[["chronoStratigraphy"]] <- lapply(
  1:sample(1:10, 1),
  function(x) ChronoStratigraphy$new()
)
args[["lithoStratigraphy"]] <- lapply(
  1:sample(1:10, 1),
  function(x) LithoStratigraphy$new()
)
args[["iptc"]] <- Iptc4xmpExt$new()
args[["bioStratigraphic"]] <- lapply(
  1:sample(1:10, 1),
  function(x) BioStratigraphy$new()
)

# make MultiMediaGatheringEvent object without and with args
objEmpty <- MultiMediaGatheringEvent$new()
objRand <- do.call(MultiMediaGatheringEvent$new, args)

test_that("Constructor works", {
  expect_s3_class(objEmpty, "MultiMediaGatheringEvent")
  expect_s3_class(objRand, "MultiMediaGatheringEvent")
})

test_that("toList works", {
  expect_type(objEmpty$toList(), "list")
  expect_type(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- MultiMediaGatheringEvent$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "MultiMediaGatheringEvent")
})

test_that("toJSONString works", {
  expect_s3_class(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_s3_class(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- MultiMediaGatheringEvent$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_s3_class(obj, "MultiMediaGatheringEvent")
})

test_that("print works", {
  obj <- MultiMediaGatheringEvent$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_snapshot(obj$print())
})
