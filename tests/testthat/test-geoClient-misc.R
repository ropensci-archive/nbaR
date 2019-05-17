source("setup-vars.R")

context("Testing miscellaneous GeoClient endpoints")

test_that("count works", {
  res <- gc$count()
  expect_is(res$content, "integer")
  expect_true(res$content > 0)
})

test_that("getDistinctValues works", {
  ## check for all paths
  paths <- gc$get_paths()$content
  ## fielddata not supported for all fields, remove them
  paths <- paths[paths != "shape"]
  for (p in paths) {
    res <- gc$get_distinct_values(p)
    ## check if we get list back
    expect_is(res$content, "list")
  }
  ## method should give a warning if field is not found
  expect_warning(gc$get_distinct_values("XX"))
})

test_that("getGeoJsonForLocality works", {
  loc <- "Netherlands"
  res <- gc$get_geo_json_for_locality(loc)
  expect_is(res$content, "list")
})
