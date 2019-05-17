

context("Testing class MultiMediaGatheringEvent")

# Make a list with random arguments for all fields in the class
args <- list()
args[["projectTitle"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["worldRegion"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["continent"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["country"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["iso3166Code"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["provinceState"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["island"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["locality"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["city"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["sublocality"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["localityText"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
  as.Date("2018/06/04"),
  by = "day"
), 1))
args[["dateTimeBegin"]] <- randomDate
randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
  as.Date("2018/06/04"),
  by = "day"
), 1))
args[["dateTimeEnd"]] <- randomDate
args[["method"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["altitude"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["altitudeUnifOfMeasurement"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["biotopeText"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["depth"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
args[["depthUnitOfMeasurement"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Person$new()
)
args[["gatheringPersons"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) Organization$new()
)
args[["gatheringOrganizations"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) GatheringSiteCoordinates$new()
)
args[["siteCoordinates"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) NamedArea$new()
)
args[["namedAreas"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) AssociatedTaxon$new()
)
args[["associatedTaxa"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) ChronoStratigraphy$new()
)
args[["chronoStratigraphy"]] <- randomList
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) LithoStratigraphy$new()
)
args[["lithoStratigraphy"]] <- randomList
args[["iptc"]] <- Iptc4xmpExt$new()
randomList <- lapply(
  1:sample(1:10, 1),
  function(x) BioStratigraphy$new()
)
args[["bioStratigraphic"]] <- randomList

# make MultiMediaGatheringEvent object without and with args
objEmpty <- MultiMediaGatheringEvent$new()
objRand <- do.call(MultiMediaGatheringEvent$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "MultiMediaGatheringEvent")
  expect_is(objRand, "MultiMediaGatheringEvent")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- MultiMediaGatheringEvent$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "MultiMediaGatheringEvent")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- MultiMediaGatheringEvent$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "MultiMediaGatheringEvent")
})

test_that("print works", {
  obj <- MultiMediaGatheringEvent$new()
  obj$fromJSONString(objRand$toJSONString())
  ## check that the print method doesn't error
  expect_error(obj$print(), NA)
})
