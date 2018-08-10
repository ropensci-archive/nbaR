library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

sc <- SpecimenClient$new()

context("Testing miscellaneous specimen endpoints")

test_that("exists works", {
  ## test for existing specimen
  res <- sc$exists("L.4191428")
  expect_is(res$content, "logical")
  expect_true(res$content)

  ## test for nonexisting specimen
  res <- sc$exists("XXX")
  expect_is(res$content, "logical")
  expect_false(res$content)
})

test_that("count works", {
  qs <- QuerySpec$new(
    conditions = list(QueryCondition$new(
      field = "identifications.defaultClassification.genus",
      operator = "EQUALS",
      value = "Passiflora"
    ))
  )
  res <- sc$count(querySpec = qs)
  expect_true(is.numeric(res$content))
  expect_true(res$content > 0)

  ## test with queryParams instead of querySpec
  ## test also for empty result
  res <- sc$count(queryParams = list(sourceSystem.code = "XXX"))
  expect_true(is.numeric(res$content))
  expect_equal(res$content, 0)
})

test_that("countDistinctValues works", {
  res <- sc$count_distinct_values("gatheringEvent.country")
  expect_true(res$content > 0)
})

test_that("getDistinctValues works", {
  ## check for all paths
  paths <- sc$get_paths()$content
  ## fielddata not supported for geoShape, remove it
  paths <- paths[paths != "gatheringEvent.siteCoordinates.geoShape"]
  for (p in paths) {
    res <- sc$get_distinct_values(p)
    ## check if we get list back
    expect_is(res$content, "list")
  }
  ## method should give a warning if field is not found
  expect_warning(sc$get_distinct_values("XX"))
})

test_that("download endpoint works", {
  qs <- QuerySpec$new(
    conditions = list(QueryCondition$new(
      field = "identifications.defaultClassification.genus",
      operator = "EQUALS",
      value = "Passiflora"
    )), size = 100
  )
  res <- sc$download_query(querySpec = qs)
  expect_length(res$content, 100)

  ## check if we got specimen documents back
  for (s in res$content) {
    expect_is(s, "Specimen")
  }
})

test_that("getDistinctValuesPerGroup works", {
  res <- sc$get_distinct_values_per_group(
    group = "sourceSystem.code",
    field = "recordBasis"
  )
  ## Result should be a list with two entries, for BRAHMS and CRS
  expect_is(res$content, "list")
  expect_length(res$content, 2)
})

test_that("getIdsInCollection works", {
  res <- sc$get_ids_in_collection("siebold")
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("getNamedCollections works", {
  res <- sc$get_named_collections()
  expect_is(res$content, "character")
  expect_true(length(res$content) > 0)
})

test_that("groupByScientificName works", {
  qc <- QueryCondition$new(
    field = "identifications.defaultClassification.genus",
    operator = "EQUALS", value = "Passiflora"
  )

  ## check with generic QuerySpec
  qs <- QuerySpec$new(conditions = list(qc))
  res <- sc$group_by_scientific_name(qs)

  ## check if we get specimen documents
  for (hit in res$content$resultSet) {
    expect_is(hit$item, "Specimen")
  }

  ## check if it works with a GroupByScientificNameQuerySpec
  qs <- GroupByScientificNameQuerySpec$new(
    conditions = list(qc),
    groupSort = "NAME_ASC"
  )
  res <- sc$group_by_scientific_name(qs)

  ## check if we get specimen documents
  for (hit in res$content$resultSet) {
    expect_is(hit$item, "Specimen")
  }
})

test_that("countDistinctValuesPerGroup works", {
  group <- "collectionType"
  field <- "identifications.defaultClassification.family"
  res <- sc$count_distinct_values_per_group(group, field)

  ## we should get a list of lists
  expect_is(res$content, "list")
  for (r in res$content) {
    expect_is(r, "list")
    ## names in list should be the same as input
    expect_true(all(names(r) %in% c(group, field)))
  }
})
