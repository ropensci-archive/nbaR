library("nbaR")
library("testthat")

set.seed(111)

context("Testing class MultiMediaGatheringEvent")

test_that("Constructor works", {
  obj <- MultiMediaGatheringEvent$new()
  expect_is(obj, "MultiMediaGatheringEvent")

  # test constructor with random arguments
  # test field projectTitle, type character
  obj <- MultiMediaGatheringEvent$new(
    projectTitle = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field worldRegion, type character
  obj <- MultiMediaGatheringEvent$new(
    worldRegion = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field continent, type character
  obj <- MultiMediaGatheringEvent$new(
    continent = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field country, type character
  obj <- MultiMediaGatheringEvent$new(
    country = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field iso3166Code, type character
  obj <- MultiMediaGatheringEvent$new(
    iso3166Code = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field provinceState, type character
  obj <- MultiMediaGatheringEvent$new(
    provinceState = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field island, type character
  obj <- MultiMediaGatheringEvent$new(
    island = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field locality, type character
  obj <- MultiMediaGatheringEvent$new(
    locality = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field city, type character
  obj <- MultiMediaGatheringEvent$new(
    city = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field sublocality, type character
  obj <- MultiMediaGatheringEvent$new(
    sublocality = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field localityText, type character
  obj <- MultiMediaGatheringEvent$new(
    localityText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field dateTimeBegin, type character
  randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
  obj <- MultiMediaGatheringEvent$new(dateTimeBegin = randomDate)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field dateTimeEnd, type character
  randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
  obj <- MultiMediaGatheringEvent$new(dateTimeEnd = randomDate)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field method, type character
  obj <- MultiMediaGatheringEvent$new(
    method = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field altitude, type character
  obj <- MultiMediaGatheringEvent$new(
    altitude = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field altitudeUnifOfMeasurement, type character
  obj <- MultiMediaGatheringEvent$new(
    altitudeUnifOfMeasurement = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field biotopeText, type character
  obj <- MultiMediaGatheringEvent$new(
    biotopeText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field depth, type character
  obj <- MultiMediaGatheringEvent$new(
    depth = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field depthUnitOfMeasurement, type character
  obj <- MultiMediaGatheringEvent$new(
    depthUnitOfMeasurement = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field gatheringPersons, type list, datatype Person
  lst <- lapply(1:sample(1:10, 1), function(x) Person$new())
  obj <- MultiMediaGatheringEvent$new(gatheringPersons = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field gatheringOrganizations, type list, datatype Organization
  lst <- lapply(1:sample(1:10, 1), function(x) Organization$new())
  obj <- MultiMediaGatheringEvent$new(gatheringOrganizations = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field siteCoordinates, type list, datatype GatheringSiteCoordinates
  lst <- lapply(1:sample(1:10, 1), function(x) GatheringSiteCoordinates$new())
  obj <- MultiMediaGatheringEvent$new(siteCoordinates = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field namedAreas, type list, datatype NamedArea
  lst <- lapply(1:sample(1:10, 1), function(x) NamedArea$new())
  obj <- MultiMediaGatheringEvent$new(namedAreas = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field associatedTaxa, type list, datatype AssociatedTaxon
  lst <- lapply(1:sample(1:10, 1), function(x) AssociatedTaxon$new())
  obj <- MultiMediaGatheringEvent$new(associatedTaxa = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field chronoStratigraphy, type list, datatype ChronoStratigraphy
  lst <- lapply(1:sample(1:10, 1), function(x) ChronoStratigraphy$new())
  obj <- MultiMediaGatheringEvent$new(chronoStratigraphy = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field lithoStratigraphy, type list, datatype LithoStratigraphy
  lst <- lapply(1:sample(1:10, 1), function(x) LithoStratigraphy$new())
  obj <- MultiMediaGatheringEvent$new(lithoStratigraphy = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field iptc, type Iptc4xmpExt
  obj <- MultiMediaGatheringEvent$new(iptc = Iptc4xmpExt$new())
  expect_is(obj, "MultiMediaGatheringEvent")
  # test field bioStratigraphic, type list, datatype BioStratigraphy
  lst <- lapply(1:sample(1:10, 1), function(x) BioStratigraphy$new())
  obj <- MultiMediaGatheringEvent$new(bioStratigraphic = lst)
  expect_is(obj, "MultiMediaGatheringEvent")
})

test_that("toList works", {
  obj <- MultiMediaGatheringEvent$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- MultiMediaGatheringEvent$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
