library("nbaR")
library("testthat")

set.seed(111)

context("Testing class GatheringEvent")

test_that("Constructor works", {
  obj <- GatheringEvent$new()
  expect_is(obj, "GatheringEvent")

  # test constructor with random arguments
  # test field projectTitle, type character
  obj <- GatheringEvent$new(
    projectTitle = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field worldRegion, type character
  obj <- GatheringEvent$new(
    worldRegion = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field continent, type character
  obj <- GatheringEvent$new(
    continent = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field country, type character
  obj <- GatheringEvent$new(
    country = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field iso3166Code, type character
  obj <- GatheringEvent$new(
    iso3166Code = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field provinceState, type character
  obj <- GatheringEvent$new(
    provinceState = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field island, type character
  obj <- GatheringEvent$new(
    island = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field locality, type character
  obj <- GatheringEvent$new(
    locality = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field city, type character
  obj <- GatheringEvent$new(
    city = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field sublocality, type character
  obj <- GatheringEvent$new(
    sublocality = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field localityText, type character
  obj <- GatheringEvent$new(
    localityText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field dateTimeBegin, type character
  randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
  obj <- GatheringEvent$new(dateTimeBegin = randomDate)
  expect_is(obj, "GatheringEvent")
  # test field dateTimeEnd, type character
  randomDate <- as.character(sample(seq(as.Date("1600/01/01"),
    as.Date("2018/06/04"),
    by = "day"
  ), 1))
  obj <- GatheringEvent$new(dateTimeEnd = randomDate)
  expect_is(obj, "GatheringEvent")
  # test field method, type character
  obj <- GatheringEvent$new(
    method = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field altitude, type character
  obj <- GatheringEvent$new(
    altitude = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field altitudeUnifOfMeasurement, type character
  obj <- GatheringEvent$new(
    altitudeUnifOfMeasurement = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field biotopeText, type character
  obj <- GatheringEvent$new(
    biotopeText = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field depth, type character
  obj <- GatheringEvent$new(
    depth = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field depthUnitOfMeasurement, type character
  obj <- GatheringEvent$new(
    depthUnitOfMeasurement = paste(sample(
      c(LETTERS, letters),
      sample(1:20, 1)
    ), collapse = "")
  )
  expect_is(obj, "GatheringEvent")
  # test field gatheringPersons, type list, datatype Person
  lst <- lapply(1:sample(1:10, 1), function(x) Person$new())
  obj <- GatheringEvent$new(gatheringPersons = lst)
  expect_is(obj, "GatheringEvent")
  # test field gatheringOrganizations, type list, datatype Organization
  lst <- lapply(1:sample(1:10, 1), function(x) Organization$new())
  obj <- GatheringEvent$new(gatheringOrganizations = lst)
  expect_is(obj, "GatheringEvent")
  # test field siteCoordinates, type list, datatype GatheringSiteCoordinates
  lst <- lapply(1:sample(1:10, 1), function(x) GatheringSiteCoordinates$new())
  obj <- GatheringEvent$new(siteCoordinates = lst)
  expect_is(obj, "GatheringEvent")
  # test field namedAreas, type list, datatype NamedArea
  lst <- lapply(1:sample(1:10, 1), function(x) NamedArea$new())
  obj <- GatheringEvent$new(namedAreas = lst)
  expect_is(obj, "GatheringEvent")
  # test field associatedTaxa, type list, datatype AssociatedTaxon
  lst <- lapply(1:sample(1:10, 1), function(x) AssociatedTaxon$new())
  obj <- GatheringEvent$new(associatedTaxa = lst)
  expect_is(obj, "GatheringEvent")
  # test field chronoStratigraphy, type list, datatype ChronoStratigraphy
  lst <- lapply(1:sample(1:10, 1), function(x) ChronoStratigraphy$new())
  obj <- GatheringEvent$new(chronoStratigraphy = lst)
  expect_is(obj, "GatheringEvent")
  # test field lithoStratigraphy, type list, datatype LithoStratigraphy
  lst <- lapply(1:sample(1:10, 1), function(x) LithoStratigraphy$new())
  obj <- GatheringEvent$new(lithoStratigraphy = lst)
  expect_is(obj, "GatheringEvent")
  # test field bioStratigraphic, type list, datatype BioStratigraphy
  lst <- lapply(1:sample(1:10, 1), function(x) BioStratigraphy$new())
  obj <- GatheringEvent$new(bioStratigraphic = lst)
  expect_is(obj, "GatheringEvent")
})

test_that("toList works", {
  obj <- GatheringEvent$new()
  l <- obj$toList()
  expect_is(l, "list")
})

test_that("toJSONString works", {
  obj <- GatheringEvent$new()
  s <- obj$toJSONString()
  expect_is(s, "json")
  expect_true(s != "")
})
